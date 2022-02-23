import { useEffect } from 'react'
import { useParams } from 'react-router-dom'

const Manga = ({base}) => {
    const { mangaId, mangaName, chapter } = useParams()

    useEffect(() => {
        
    }, [])

    return (
        <div>
            <h1>{ mangaName }</h1>
            <iframe 
                width="100%" 
                height="800" 
                frameBorder="0" 
                src={`http://localhost:9000/oracle/${base}/${mangaId}/${chapter}`}
            >
            </iframe>
        </div>
    )
}

export default Manga