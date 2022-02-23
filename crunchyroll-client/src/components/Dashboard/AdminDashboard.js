import { useEffect, useState } from 'react'
import ToggleButtonGroup from '@mui/material/ToggleButtonGroup'
import ToggleButton from '@mui/material/ToggleButton'

import AdminUploads from './AdminUploads'
import AdminUsers from './AdminUsers'
import AdminBlogs from './AdminBlogs'
import UserReviews from './UserReviews'

const AdminDashboard = () => {
    const [action, setAction] = useState('uploads')
    const [id, setId] = useState(null)

    useEffect(() => {
        //extracting user id
        var x = sessionStorage.getItem('token')
        console.log(x.slice(x.indexOf('id')+5).replaceAll('"','').replaceAll('}',''))
        var userID = x.slice(x.indexOf('id')+5).replaceAll('"','').replaceAll('}','')

        setId(userID)
    }, [])

    const handleAction = (e, currentAction) => {
        console.log(currentAction)
        setAction(currentAction)
    }

    return(
        <div>
            <h1>Admin Dashboard</h1>
            <ToggleButtonGroup
                value={action}
                exclusive
                onChange={handleAction}
            >
                <ToggleButton value="uploads" aria-label="left aligned">
                    Uploads
                </ToggleButton>
                <ToggleButton value="users" aria-label="centered">
                    Users
                </ToggleButton>
                <ToggleButton value="blogs" aria-label="centered">
                    Blogs
                </ToggleButton>
                <ToggleButton value="reviews" aria-label="centered">
                    Reviews
                </ToggleButton>
            </ToggleButtonGroup>

            {action === 'uploads' && <AdminUploads id={id} />}
            {action === 'users' && <AdminUsers />}
            {action === 'blogs' && <AdminBlogs id={id} />}
            {action === 'reviews' && <UserReviews id={id} />}
        </div>
    )
}

export default AdminDashboard