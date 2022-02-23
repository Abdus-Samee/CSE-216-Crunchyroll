import * as React from 'react'
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

async function loginUser(credentials) {
    return fetch('http://localhost:9000/login', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(credentials)
    })
      .then(data => data.json())
}

const theme = createTheme();

export default function SignIn({setToken, setAction}) {
  const navigate = useNavigate()
  const [formErrors, setFormErrors] = useState({})

  const handleSubmit = async e => {
    e.preventDefault();
    const data = new FormData(e.currentTarget)
    var email = data.get('email')
    var password = data.get('password')
    setFormErrors(validate(email, password))

    if(Object.keys(formErrors).length === 0){
        const token = await loginUser({
            email,
            password
        });
        
        setToken(token)

        //set an alert if the token is not valid or is empty i.e. user credentials are wrong
        //if wrong, don't navigate to the home page
        //change this...
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
            Sign in
          </Typography>
          <Box component="form" onSubmit={handleSubmit} noValidate sx={{ mt: 1 }}>
            <TextField
              margin="normal"
              required
              fullWidth
              id="email"
              label="Email Address"
              name="email"
              autoComplete="email"
              autoFocus
            />
            {formErrors.email && <Typography variant="body2" color="error">{formErrors.email}</Typography>}
            <TextField
              margin="normal"
              required
              fullWidth
              name="password"
              label="Password"
              type="password"
              id="password"
              autoComplete="current-password"
            />
            {formErrors.password && <Typography variant="body2" color="error">{formErrors.password}</Typography>}
            <Button
              type="submit"
              fullWidth
              variant="contained"
              sx={{ mt: 3, mb: 2 }}
            >
              Sign In
            </Button>
            <Grid container>
              <Grid item xs>
                
              </Grid>
              <Grid item>
                <Link onClick={() => setAction('signup')} href="#" variant="body2">
                  {"Don't have an account? Sign Up"}
                </Link>
              </Grid>
            </Grid>
          </Box>
        </Box>
        <Copyright sx={{ mt: 8, mb: 4 }} />
      </Container>
    </ThemeProvider>
  );
}