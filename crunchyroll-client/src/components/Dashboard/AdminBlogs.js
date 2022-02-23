import { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'

const AdminBlogs = ({id}) => {
    const navigate = useNavigate()
    const [blogs, setBlogs] = useState([])

    useEffect(() => {
        fetch(`http://localhost:9000/users/blogs/${id}`)
            .then(res => res.json())
            .then(data => setBlogs(data))
    }, [])

    const showIndividualBlog = (blogId) => {
        navigate(`/blogs/${blogId}`)
    }

    return(
        <div>
            {blogs.map(blog => (
                <div key={blog.BLOGID} style={{ border: '1px solid #ccc', padding: '10px' }} onClick={() => showIndividualBlog(blog.BLOGID)}>
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

export default AdminBlogs