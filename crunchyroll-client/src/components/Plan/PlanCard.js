import { useState, useEffect, forwardRef } from 'react'
import { useNavigate } from 'react-router-dom'
import Box from '@mui/material/Box'
import Button from '@mui/material/Button'
import Snackbar from '@mui/material/Snackbar'
import IconButton from '@mui/material/IconButton'
import MuiAlert from '@mui/material/Alert'
import CloseIcon from '@mui/icons-material/Close'

const PlanCard = ({token, planid, planrange, plancost}) => {
    const [open, setOpen] = useState(false)
    const navigate = useNavigate()

    useEffect(() => {
        console.log(planid, planrange, plancost)
    }, [])

    async function buyPlan(credentials) {
        return fetch("http://localhost:9000/oracle/plan", {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify(credentials)
        })
          .then(data => data.json())
    }

    const handleSubmit = async (e) => {
        e.preventDefault()
        console.log('Planid ', planid)

        if(!token) navigate('/authentication')

        var x = sessionStorage.getItem('token')
        console.log(x.slice(x.indexOf('id')+5).replaceAll('"','').replaceAll('}',''))
        var memberid = x.slice(x.indexOf('id')+5).replaceAll('"','').replaceAll('}','')
            
        const response = await buyPlan({
            memberid,
            planid
        })

        // // //alert user if response.reply is not 1
        if(response.reply === 1) {
            navigate('/')
        }else{
            setOpen(true)
        }
    }

    const handleClose = (event, reason) => {
        if (reason === 'clickaway') {
          return
        }
    
        setOpen(false)
    }

    const Alert = forwardRef(function Alert(props, ref) {
        return <MuiAlert elevation={6} ref={ref} variant="filled" {...props} />
    })

    const action = (
        <>
          <IconButton
            size="small"
            aria-label="close"
            color="inherit"
            onClick={handleClose}
          >
            <CloseIcon fontSize="small" />
          </IconButton>
        </>
    )

    return(
        <>
            <Box 
                className="cen"
                sx={{ marginTop: 8, }}
                onSubmit={handleSubmit}
                component="form"
            >
                <h1>{planrange}</h1>
                <br/>
                <p>Cost: {plancost} credits</p>
                <br /><br />
                <Button
                    type="submit"
                    variant="contained" 
                    sx={{ mt: 3, mb: 2 }}
                >
                    Avail Offer!
                </Button>
            </Box>
            <Snackbar
                open={open}
                autoHideDuration={6000}
                onClose={handleClose}
            >
                <Alert onClose={handleClose} severity="error" sx={{ width: '100%' }}>
                    Error occured while buying plan...
                </Alert>
            </Snackbar>
        </>
    )
}

export default PlanCard