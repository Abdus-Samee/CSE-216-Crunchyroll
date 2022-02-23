import { useState, useEffect } from 'react'
import Slider from 'react-slick'
import Box from '@mui/material/Box'
import PlanCard from './PlanCard'

import './styles.css'

const Plan = ({token}) => {
    const [plan, setPlan] = useState([])

    const settings = {
        dots: true,
        fade: true,
        infinite: true,
        speed: 500,
        slidesToShow: 1,
        slidesToScroll: 1
    }

    useEffect(() => {
        fetch('http://localhost:9000/oracle/plan')
            .then(res => res.json())
            .then(data => setPlan(data))

        console.log('Plans ', plan)
    }, [])

    return(
        <div
            style={{
                display: 'flex',
                flexDirection: 'row',
                alignItems: 'center',
                justifyContent: 'space-around',
            }}
        >
            {plan.map(item => (
                <PlanCard 
                    key={item.PLANID}
                    token={token}
                    planid={item.PLANID}
                    planrange={item.PLANRANGE}
                    plancost={item.COST}
                />
            ))}
        </div>
    )
}

export default Plan