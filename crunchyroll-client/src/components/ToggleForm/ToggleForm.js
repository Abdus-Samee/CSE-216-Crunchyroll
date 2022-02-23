import { useState, useEffect } from 'react'
import Container from '@mui/material/Container'
import SignIn from '../Signin/Signin'
import SignUp from '../Signup/Signup'
import ToggleButton from '@mui/material/ToggleButton'
import ToggleButtonGroup from '@mui/material/ToggleButtonGroup'

export default function ToggleForm({setToken}) {
  const [action, setAction] = useState('signin')

  useEffect(() => {

  }, [action])

  const handleSignInSignUp = (e, currentAction) => {
    setAction(currentAction)
  }

  return (
    <Container>
        <ToggleButtonGroup
          value={action}
          exclusive
          onChange={handleSignInSignUp}
          aria-label="signin/signup"
        >
          <ToggleButton value="signin" aria-label="left aligned">
              Sign In
          </ToggleButton>
          <ToggleButton value="signup" aria-label="centered">
              Sign Up
          </ToggleButton>
        </ToggleButtonGroup>
        {action === 'signin' && <SignIn setAction={setAction} setToken={setToken} />}
        {action === 'signup' && <SignUp setAction={setAction} setToken={setToken} />}
    </Container>
  );
}
