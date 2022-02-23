import { useNavigate, useParams } from 'react-router-dom'

const TestComponent = () => {
    const { planrange, planid } = useParams()
    
    return(
        <div>
            <h1>{planrange}</h1>
            <p>Plan ID: {planid}</p>
        </div>
    )
}

export default TestComponent