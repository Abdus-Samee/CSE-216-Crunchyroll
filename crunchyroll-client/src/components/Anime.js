import { useState, useEffect } from 'react'
import { useNavigate, useParams } from 'react-router-dom'

const Anime = ({base}) => {
    const { animeId, animeName, episode } = useParams()

    useEffect(() => {
        
    }, [])

    return (
        <div>
            <h1>{ animeName }</h1>
            <video width="650" controls muted>
                <source src={`http://localhost:9000/oracle/${base}/${animeId}/${episode}`} type="video/mp4"></source>
            </video>
        </div>
    )
}

export default Anime
