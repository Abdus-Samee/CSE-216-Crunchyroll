import { useEffect, useState } from 'react'
import ToggleButtonGroup from '@mui/material/ToggleButtonGroup'
import ToggleButton from '@mui/material/ToggleButton'

import UserPlans from './UserPlans'
import UserReviews from './UserReviews'

const MemberDashboard = () => {
    const [action, setAction] = useState('plans')
    const [id, setId] = useState(null)
    const [wallet, setWallet] = useState(0)

    useEffect(() => {
        //extracting user id
        var x = sessionStorage.getItem('token')
        console.log('MemberDash ', x)
        console.log(x.slice(x.indexOf('id')+5).replaceAll('"','').replaceAll('}',''))
        var userID = x.slice(x.indexOf('id')+5).replaceAll('"','').replaceAll('}','')

        setId(userID)

        //extracting wallet of member
        fetch(`http://localhost:9000/users/wallet/${userID}`)
            .then(res => res.json())
            .then(data => setWallet(data.WALLET))
    }, [])

    const handleAction = (e, currentAction) => {
        console.log(currentAction)
        setAction(currentAction)
    }

    return(
        <div>
            <h1>Member Dashboard</h1>
            <h4>Current wallet: {wallet}</h4>
            <ToggleButtonGroup
                value={action}
                exclusive
                onChange={handleAction}
            >
                <ToggleButton value="plans" aria-label="centered">
                    Plans
                </ToggleButton>
                <ToggleButton value="reviews" aria-label="centered">
                    Reviews
                </ToggleButton>
            </ToggleButtonGroup>

            {action === 'plans' && <UserPlans id={id} />}
            {action === 'reviews' && <UserReviews id={id} />}
        </div>
    )
}

export default MemberDashboard