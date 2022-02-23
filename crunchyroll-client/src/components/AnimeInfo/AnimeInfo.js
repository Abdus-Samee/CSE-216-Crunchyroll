import { useState, useEffect } from 'react'
import { useNavigate, useParams } from 'react-router-dom'
import Box from '@mui/material/Box'
import Button from '@mui/material/Button'
import List from '@mui/material/List'
import ListItem from '@mui/material/ListItem'
import ListItemText from '@mui/material/ListItemText'
import Divider from '@mui/material/Divider'
import Accordion from '@mui/material/Accordion'
import AccordionSummary from '@mui/material/AccordionSummary'
import AccordionDetails from '@mui/material/AccordionDetails'
import Typography from '@mui/material/Typography'
import ExpandMoreIcon from '@mui/icons-material/ExpandMore'
import TextField from '@mui/material/TextField'
import Rating from 'react-rating'

const AnimeInfo = ({token, base}) => {
    const [count, setCount] = useState(0)
    const [userID, setUserID] = useState('')
    const [info, setInfo] = useState({})
    const [episodes, setEpisodes] = useState([])
    const [reviews, setReviews] = useState([])
    const [reviewGiven, setReviewGiven] = useState(false)
    const [rating, setRating] = useState(0)
    const navigate = useNavigate()
    const { animeId } = useParams()

    useEffect(() => {
        //finds the userid from the token stored in sessionStorage
        if(token){
            var x = sessionStorage.getItem('token')
            console.log(x.slice(x.indexOf('id')+5).replaceAll('"','').replaceAll('}',''))
            var id = x.slice(x.indexOf('id')+5).replaceAll('"','').replaceAll('}','')
            setUserID(id)

            //check if a user rating is found and update the rating and/or reviewGiven state
            fetch(`http://localhost:9000/oracle/${base}review/${animeId}/${id}`)
                .then(response => response.json())
                .then(data => {
                    if(data.length > 0){
                        setCount(data[0].COUNT)
                        if(data[0].RATING) setRating(data[0].RATING)
                        if(data[0].MEMBER) setReviewGiven(true)
                    }else{
                        console.log("No rating found...")
                    }
                })
        }else{
            if(base === 'panime') navigate('/authentication')

            fetch(`http://localhost:9000/oracle/${base}review/total/${animeId}`)
                .then(response => response.json())
                .then(data => {
                    console.log(data)
                    data.COUNT !== null && setCount(data.COUNT)
                })
        }

        
        // //add a fetch call for all the reviews for the anime
        fetch(`http://localhost:9000/oracle/${base}review/${animeId}`)
            .then(response => response.json())
            .then(data => setReviews(data))

        //try using joins for the following two calls
        fetch(`http://localhost:9000/oracle/${base}/${animeId}`)
            .then(response => response.json())
            .then(data => setInfo(data))

        fetch(`http://localhost:9000/oracle/${base}/episodes/${animeId}`)
            .then(response => response.json())
            .then(data => setEpisodes(data))
    }, [token])

    async function addReview(credentials) {
        return fetch(`http://localhost:9000/oracle/${base}review/${animeId}`, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify(credentials)
        })
          .then(data => data.json())
    }

    const handleSubmit = async e => {
        e.preventDefault()
        const data = new FormData(e.currentTarget)
        var reviewText = data.get('review')
        console.log(reviewText, rating)
            
        const response = await addReview({
            userID,
            reviewText,
            rating
        })
        console.log(response.success)

        //alert user if response.success is false
        if(response.success){
            setReviewGiven(true)
            window.location.reload()
        }
    }

    return(
        <div>
            <h1>{ info.TITLE }</h1>
            <h5>Producer - {info.NAME}</h5>
            <h5>{ info.SYNOPSIS }</h5>
            <p>Overall Rating: {count}</p>
            {reviewGiven && <p>Personal Rating: {rating}</p>}
            <p>Released on : { new Date(info['Release Date'] ).toLocaleDateString() }</p>
            <List component="nav" aria-label="mailbox folders">
                {episodes.map((episode, index) => (
                    <>
                        <ListItem button divider onClick={() => navigate(`/${base}/${animeId}/${info.TITLE}/${episode.EPISODE}`)}>
                            <ListItemText primary={'Episode ' + (index+1) + ', Link: ' + episode.EPISODE} />
                        </ListItem>
                        <Divider />
                    </>
                ))}
            </List>
            <br/>
            <h1 style={{ textAlign: 'center'}}>REVIEWS</h1>
            {reviews.length > 0? reviews.map(review => (
                <div style={{border: '1px solid #ccc', padding: '10px'}}>
                    <p>{review.TEXT}</p>
                    <p>{review.RATING}</p>
                </div>
            )) : <p>No reviews yet</p>}
            {token && !reviewGiven && (<Accordion>
                <AccordionSummary
                    expandIcon={<ExpandMoreIcon />}
                    aria-controls="panel1a-content"
                    id="panel1a-header"
                >
                    <Typography>Give a review</Typography>
                </AccordionSummary>
                <AccordionDetails>
                    <Box
                        sx={{
                            marginTop: 8,
                        }}
                        onSubmit={handleSubmit}
                        component="form"
                    >
                        <Rating
                            onClick={(value) => setRating(value)}
                        />
                        <TextField
                            margin="normal"
                            required
                            fullWidth
                            id="review"
                            name="review"
                            autoComplete="review"
                            autoFocus
                        />
                        <Button
                            type="submit"
                            fullWidth
                            variant="contained"
                            sx={{ mt: 3, mb: 2 }}
                        >
                            Review!
                        </Button>
                    </Box>
                </AccordionDetails>
            </Accordion>)}
        </div>
    )
}

export default AnimeInfo