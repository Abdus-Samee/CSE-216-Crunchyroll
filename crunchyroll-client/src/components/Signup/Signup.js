import { useState } from 'react'
import { useNavigate } from 'react-router-dom'
import Avatar from '@mui/material/Avatar'
import Button from '@mui/material/Button'
import CssBaseline from '@mui/material/CssBaseline'
import TextField from '@mui/material/TextField'
import Link from '@mui/material/Link'
import Grid from '@mui/material/Grid'
import Box from '@mui/material/Box'
import LockOutlinedIcon from '@mui/icons-material/LockOutlined'
import Typography from '@mui/material/Typography'
import Container from '@mui/material/Container'
import { createTheme, ThemeProvider } from '@mui/material/styles'

function Copyright(props) {
  return (
    <Typography variant="body2" color="text.secondary" align="center" {...props}>
      {'Copyright © '}
      <Link color="inherit" href="https://mui.com/">
        Crunchyroll
      </Link>{' '}
      {new Date().getFullYear()}
      {'.'}
    </Typography>
  );
}

async function signupMember(credentials) {
    return fetch('http://localhost:9000/signup', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(credentials)
    })
      .then(data => data.json())
}

const theme = createTheme()

export default function SignUp({setToken, setAction}) {
  const navigate = useNavigate()
  const [formErrors, setFormErrors] = useState({})

  const handleSubmit = async e => {
    e.preventDefault();
    const data = new FormData(e.currentTarget)
    var email = data.get('email')
    var password = data.get('password')
    setFormErrors(validate(email, password))
    
    if(Object.keys(formErrors).length === 0){
        const token = await signupMember({
            email,
            password
        })
        //set an alert if the token is not valid or is empty i.e. user credentials are wrong
        setToken(token)

        if(token) navigate(-1)
    }else{
        console.log(formErrors)
        console.log("Error  submitting form...")
    }
  }

  const validate = (email, password) => {
    const errors = {}
    const regex = /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/i
    if(!email) errors.email = 'Email is required'
    if(!password) errors.password = 'Password is required'

    return errors
  }

  return (
    <ThemeProvider theme={theme}>
      <Container component="main" maxWidth="xs">
        <CssBaseline />
        <Box
          sx={{
            marginTop: 8,
            display: 'flex',
            flexDirection: 'column',
            alignItems: 'center',
          }}
        >
          <Avatar sx={{ m: 1, bgcolor: 'secondary.main' }}>
            <LockOutlinedIcon />
          </Avatar>
          <Typography component="h1" variant="h5">
            Sign up
          </Typography>
          <Box component="form" noValidate onSubmit={handleSubmit} sx={{ mt: 3 }}>
            <Grid container spacing={2}>
              <Grid item xs={12}>
                <TextField
                  required
                  fullWidth
                  id="email"
                  label="Email Address"
                  name="email"
                  autoComplete="email"
                />
                {formErrors.email && <Typography variant="body2" color="error">{formErrors.email}</Typography>}
              </Grid>
              <Grid item xs={12}>
                <TextField
                  required
                  fullWidth
                  name="password"
                  label="Password"
                  type="password"
                  id="password"
                  autoComplete="new-password"
                />
                {formErrors.email && <Typography variant="body2" color="error">{formErrors.email}</Typography>}
              </Grid>
            </Grid>
            <Button
              type="submit"
              fullWidth
              variant="contained"
              sx={{ mt: 3, mb: 2 }}
            >
              Sign Up
            </Button>
            <Grid container justifyContent="flex-end">
              <Grid item>
                <Link onClick={() => setAction('signin')} href="#" variant="body2">
                  Already have an account? Sign in
                </Link>
              </Grid>
            </Grid>
          </Box>
        </Box>
        <Copyright sx={{ mt: 5 }} />
      </Container>
    </ThemeProvider>
  );
}