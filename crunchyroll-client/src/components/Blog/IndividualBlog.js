import { useState, useEffect } from 'react'
import { useParams } from 'react-router-dom'
import Accordion from '@mui/material/Accordion'
import AccordionSummary from '@mui/material/AccordionSummary'
import AccordionDetails from '@mui/material/AccordionDetails'
import Typography from '@mui/material/Typography'
import ExpandMoreIcon from '@mui/icons-material/ExpandMore'
import TextField from '@mui/material/TextField'
import Box from '@mui/material/Box'
import Button from '@mui/material/Button'
import List from '@mui/material/List'
import ListItem from '@mui/material/ListItem'
import ListItemText from '@mui/material/ListItemText'
import Divider from '@mui/material/Divider'

const IndividualBlog = ({token}) => {
    const { blogId } = useParams()
    const [blog, setBlog] = useState({})
    const [comment, setComment] = useState('')
    const [comments, setComments] = useState([])

    useEffect(() => {
        fetch("http://localhost:9000/oracle/blogs/"+blogId)
            .then(response => response.json())
            .then(data => setBlog(data))
        
        fetch("http://localhost:9000/oracle/comments/"+blogId)
            .then(response => response.json())
            .then(data => setComments(data))
    }, [])

    async function addComment(credentials) {
        return fetch("http://localhost:9000/oracle/blogs/"+blogId, {
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

        if(comment){
            console.log('Commented: ', comment)

            
            const response = await addComment({
                comment
            });
            console.log(response.success)

            //alert user if response.success is false
            if(response.success){
                setComments([...comments, comment])
                setComment('')
            }
        }
    }

    return(
        <div>
            {blog && 
                <div>
                    <h1>{blog.TITLE}</h1>
                    <p>{ new Date(blog.TIME).toLocaleDateString() }</p>
                    <div 
                        dangerouslySetInnerHTML={{ __html: blog.TEXT }}
                    />
                </div>
            }
            <br />
            <hr style={{ width: '5%'}} />
            <h4>Comments</h4>
            <hr />
            <List>
            {comments.length > 0 ? comments.map(comment => (
                <>
                    <ListItem>
                        <ListItemText primary={comment.TEXT} />
                    </ListItem>
                    <Divider />
                </>
            )) : <i>No comments yet</i>}
            </List>
            <br /><br />
            {token && (<Accordion>
                <AccordionSummary
                    expandIcon={<ExpandMoreIcon />}
                    aria-controls="panel1a-content"
                    id="panel1a-header"
                >
                    <Typography>Add a Comment</Typography>
                </AccordionSummary>
                <AccordionDetails>
                    <Box
                        sx={{
                            marginTop: 8,
                            display: 'flex',
                            alignItems: 'space-between',
                        }}
                        onSubmit={handleSubmit}
                        component="form"
                    >
                        <TextField
                            margin="normal"
                            required
                            fullWidth
                            id="comment"
                            name="comment"
                            autoComplete="comment"
                            autoFocus
                            onChange={(e) => setComment(e.target.value)}
                        />
                        <Button
                            type="submit"
                            fullWidth
                            variant="contained"
                            sx={{ mt: 3, mb: 2 }}
                        >
                            Comment!
                        </Button>
                    </Box>
                </AccordionDetails>
            </Accordion>)}
        </div>
    )
}

export default IndividualBlog