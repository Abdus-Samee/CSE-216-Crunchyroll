import { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import AppBar from '@mui/material/AppBar'
import Box from '@mui/material/Box'
import Toolbar from '@mui/material/Toolbar'
import IconButton from '@mui/material/IconButton'
import Typography from '@mui/material/Typography'
import Menu from '@mui/material/Menu'
import MenuIcon from '@mui/icons-material/Menu'
import Container from '@mui/material/Container'
import Avatar from '@mui/material/Avatar'
import Button from '@mui/material/Button'
import Tooltip from '@mui/material/Tooltip'
import MenuItem from '@mui/material/MenuItem'

const pages = [ 'Genres', 'Plan', 'Blog', 'Premium']
const settings = [ 'Dashboard', 'Logout'];
const authenticates = ['Sign In', 'Sign Up']

const Navbar = ({ token, logOutFunction }) => {
  const navigate = useNavigate()
  const [anchorElNav, setAnchorElNav] = useState(null)
  const [anchorElUser, setAnchorElUser] = useState(null)

  useEffect(() => {
    console.log('senge...', token)
    if(token){
      //checking if user is admin or not
      var id = token.slice(7)
      console.log('splitted...', id)
      if(id[0] === 'a') pages.push('Publish Blog')
    }else{
      if(pages.indexOf('Publish Blog') !== -1) pages.splice(pages.indexOf('Publish Blog'), 1)
    }
  }, [token])

  const handleOpenNavMenu = (event) => {
    setAnchorElNav(event.currentTarget)
  };
  const handleOpenUserMenu = (event) => {
    setAnchorElUser(event.currentTarget)
  };

  const handleCloseNavMenu = (page) => {
    //works on every link on navbar
    console.log(page)
    if(page === 'Genres') navigate('/genres')
    else if(page === 'Dashboard') navigate('/dashboard')
    else if(page === 'Plan') navigate('/plan')
    else if(page === 'Logout') logOutFunction()
    else if(page === 'Sign In' || page === 'Sign Up') navigate('/authentication') //clicking sign up should navigate to sign up page
    else if(page === 'Blog') navigate('/blogs')
    else if(page === 'Publish Blog') navigate('/write')
    else if(page === 'Premium') navigate('/premium')

    setAnchorElNav(null)
  };

  const handleCloseUserMenu = () => {
    setAnchorElUser(null)
  };

  return (
    <AppBar position="static">
        <Container maxWidth="xl">
          <Toolbar disableGutters>
              <Typography
              variant="h6"
              noWrap
              component="div"
              sx={{ mr: 2, display: { xs: 'none', md: 'flex' } }}
              onClick={() => navigate('/')}
              >
                CRUNCHYROLL
              </Typography>

              <Box sx={{ flexGrow: 1, display: { xs: 'flex', md: 'none' } }}>
              <IconButton
                  size="large"
                  aria-label="account of current user"
                  aria-controls="menu-appbar"
                  aria-haspopup="true"
                  onClick={handleOpenNavMenu}
                  color="inherit"
              >
                  <MenuIcon />
              </IconButton>
              <Menu
                  id="menu-appbar"
                  anchorEl={anchorElNav}
                  anchorOrigin={{
                    vertical: 'bottom',
                    horizontal: 'left',
                  }}
                  keepMounted
                  transformOrigin={{
                    vertical: 'top',
                    horizontal: 'left',
                  }}
                  open={Boolean(anchorElNav)}
                  onClose={handleCloseNavMenu}
                  sx={{
                    display: { xs: 'block', md: 'none' },
                  }}
              >
                  {pages.map((page) => (
                  <MenuItem key={page} onClick={handleCloseNavMenu}>
                      <Typography textAlign="center">{page}</Typography>
                  </MenuItem>
                  ))}
              </Menu>
              </Box>
              <Box sx={{ flexGrow: 1, display: { xs: 'none', md: 'flex' } }}>
              {pages.map((page) => (
                  <Button
                  key={page}
                  onClick={() => handleCloseNavMenu(page)}
                  sx={{ my: 2, color: 'white', display: 'block' }}
                  >
                  {page}
                  </Button>
              ))}
              </Box>

              <Box sx={{ flexGrow: 0 }}>
              <Tooltip title="Open settings">
                  <IconButton onClick={handleOpenUserMenu} sx={{ p: 0 }}>
                  <Avatar alt="Crunchyroll" src="images/logo.jpg" />
                  </IconButton>
              </Tooltip>
              {token? 
                <Menu
                  sx={{ mt: '45px' }}
                  id="menu-appbar"
                  anchorEl={anchorElUser}
                  anchorOrigin={{
                    vertical: 'top',
                    horizontal: 'right',
                  }}
                  keepMounted
                  transformOrigin={{
                    vertical: 'top',
                    horizontal: 'right',
                  }}
                  open={Boolean(anchorElUser)}
                  onClose={handleCloseUserMenu}
                >
                  {settings.map((setting) => (
                  <MenuItem key={setting} onClick={() => handleCloseNavMenu(setting)}>
                      <Typography textAlign="center">{setting}</Typography>
                  </MenuItem>
                  ))}
              </Menu> : 
              <Menu
                  sx={{ mt: '45px' }}
                  id="menu-appbar"
                  anchorEl={anchorElUser}
                  anchorOrigin={{
                    vertical: 'top',
                    horizontal: 'right',
                  }}
                  keepMounted
                  transformOrigin={{
                    vertical: 'top',
                    horizontal: 'right',
                  }}
                  open={Boolean(anchorElUser)}
                  onClose={handleCloseUserMenu}
              >
                {authenticates.map((authenticate) => (
                  <MenuItem key={authenticate} onClick={() => handleCloseNavMenu(authenticate)}>
                      <Typography textAlign="center">{authenticate}</Typography>
                  </MenuItem>
                ))}
              </Menu>
              }
              </Box>
          </Toolbar>
        </Container>
    </AppBar>
  );
};
export default Navbar;