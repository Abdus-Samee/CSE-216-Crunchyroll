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

const MangaInfo = ({token, base}) => {
    const [count, setCount] = useState(0)
    const [userID, setUserID] = useState('')
    const [info, setInfo] = useState({})
    const [chapters, setChapters] = useState([])
    const [reviews, setReviews] = useState([])
    const [reviewGiven, setReviewGiven] = useState(false)
    const [rating, setRating] = useState(0)
    const navigate = useNavigate()
    const { mangaId } = useParams()

    useEffect(() => {
        //finds the userid from the token stored in sessionStorage
        if(token){
            var x = sessionStorage.getItem('token')
            console.log(x.slice(x.indexOf('id')+5).replaceAll('"','').replaceAll('}',''))
            var id = x.slice(x.indexOf('id')+5).replaceAll('"','').replaceAll('}','')
            setUserID(id)

            //check if a user rating is found and update the rating and/or reviewGiven state
            fetch(`http://localhost:9000/oracle/${base}review/${mangaId}/${id}`)
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
            if(base === 'pmanga') navigate('/authentication')

            fetch(`http://localhost:9000/oracle/${base}review/total/${mangaId}`)
                .then(response => response.json())
                .then(data => {
                    console.log(data)
                    data.COUNT !== null && setCount(data.COUNT)
                })
        }

        // //add a fetch call for all the reviews for the anime
        fetch(`http://localhost:9000/oracle/${base}review/${mangaId}`)
            .then(response => response.json())
            .then(data => setReviews(data))

        fetch(`http://localhost:9000/oracle/${base}/${mangaId}`) 
            .then(response => response.json())
            .then(data => setInfo(data))

        fetch(`http://localhost:9000/oracle/${base}/chapters/${mangaId}`)
            .then(response => response.json())
            .then(data => setChapters(data))
    }, [token])

    async function addReview(credentials) {
        return fetch(`http://localhost:9000/oracle/${base}review/${mangaId}`, {
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

    return (
        <div>
            <h1>{ info.TITLE }</h1>
            <h5>Author - {info.NAME}</h5>
            <h5>{ info.SYNOPSIS }</h5>
            <p>Overall Rating: {count}</p>
            {reviewGiven && <p>Personal Rating: {rating}</p>}
            <p>Released on : { new Date(info['Release Date'] ).toLocaleDateString() }</p>
            <List component="nav" aria-label="mailbox folders">
                {chapters.map((chapter, index) => (
                    <>
                        <ListItem button divider onClick={() => navigate(`/${base}/${mangaId}/${info.TITLE}/${chapter.CHAPTER}`)}>
                            <ListItemText primary={'Chapter ' + (index+1) } />
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
                            onChange={(e) => (e.target.value)}
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

export default MangaInfo