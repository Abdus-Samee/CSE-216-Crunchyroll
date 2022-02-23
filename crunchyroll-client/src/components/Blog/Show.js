import { useState, useEffect } from 'react'
import { useNavigate } from 'react-router-dom'

import './styles.css'

const Show = () => {
    const navigate = useNavigate()
    const [blogs, setBlogs] = useState([])

    useEffect(() => {
        fetch("http://localhost:9000/oracle/blogs")
            .then(response => response.json())
            .then(data => setBlogs(data))
    }, [])

    const showIndividualBlog = (blogId) => {
        navigate(`/blogs/${blogId}`)
    }

    return(
        <div>
            {blogs.map(blog => (
                <div key={blog.BLOGID} className="blog-div" onClick={() => showIndividualBlog(blog.BLOGID)}>
                    <h1>{blog.TITLE}</h1>
                    <p>{ new Date(blog.TIME).toLocaleDateString() }</p>
                    <div 
                        dangerouslySetInnerHTML={{ __html: blog.TEXT}}
                    />
                </div>
            ))}
        </div>
    )
}

export default Show