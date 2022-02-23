import { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'

import AdminDashboard from './AdminDashboard'
import MemberDashboard from './MemberDashboard'

const Dashboard = ({token}) => {
  const navigate = useNavigate()
  const [type, setType] = useState('')

  useEffect(() => {
    if(token){
      //checking if user is admin or member
      var userType = token.slice(7)
      setType(userType[0])
    }else{
      navigate('/')
    }
  }, [token])

  return(
    <div>
      {type === 'a' ? <AdminDashboard /> : <MemberDashboard />}
    </div>
  )
}

export default Dashboard