import { useState, useEffect } from 'react'
import ReactQuill from 'react-quill'
import Button from '@mui/material/Button'

import './styles.css'
import 'react-quill/dist/quill.snow.css'

async function publishBlog(credentials) {
    return fetch('http://localhost:9000/oracle/blogs', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(credentials)
    })
      .then(data => data.json())
}

const Write = ({token}) => {
    const [title, setTitle] = useState('')
    const [text, setText] = useState('')

    useEffect(() => {
        if(!token) {
            window.location.href = '/authentication'
        }
    }, [token])

    const handleChange = (value) => {
        setText(value)
    }
    
    const handleSubmit = async () => {
        //finds the userid from the token stored in sessionStorage
        var x = sessionStorage.getItem('token')
        console.log(x.slice(x.indexOf('id')+5).replaceAll('"','').replaceAll('}',''))
        var id = x.slice(x.indexOf('id')+5).replaceAll('"','').replaceAll('}','')
        
        if(title && text) {
            const x = await publishBlog({
                title,
                text,
                id
            })

            if(x.reply === 1) {
                window.location.href = '/blogs'
            }else console.log(x.reply)
            //else alert for error
        }
    }

    return(
        <div>
            <h1>Write a blog...</h1>
            <input
                type="text"
                name="title"
                placeholder="Title"
                onChange={e => setTitle(e.target.value)}
            />
            <ReactQuill 
                theme="snow"
                value={text}
                onChange={handleChange}
                className="ql-editor"
            />
            <Button
                variant="contained"
                color="primary"
                onClick={handleSubmit}
            >
                Publish Blog!
            </Button>
        </div>
    )
}

export default Write