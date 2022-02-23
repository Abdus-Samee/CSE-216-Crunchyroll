import { useState, useEffect } from 'react'
import { useNavigate } from 'react-router-dom'
import Box from '@mui/material/Box'
import Card from '@mui/material/Card'
import Grid from '@mui/material/Grid'
import Button from '@mui/material/Button'
import Stack from '@mui/material/Stack'
import AnimeCard from '../Card'
import MangaCard from '../MangaCard'

const Premium = ({token}) => {
    const navigate = useNavigate()
    const [genres, setGenres] = useState([])
    const [panimes, setPanimes] = useState([])
    const [pmangas, setPmangas] = useState([])

    async function checkPremium(memberid){
        //check if member has a plan
        return fetch('http://localhost:9000/oracle/plan/' + memberid)
        .then(res => res.json())
    }

    useEffect(() => {
        if(token){
            //fetch all the genres
            fetch("http://localhost:9000/oracle/genres")
                .then(response => response.json())
                .then(data => setGenres(data))

            var userType = token.slice(7)
            console.log('Premium component id: ', userType)

            if(userType[0] === 'm'){
                //extracting the memberid
                var x = sessionStorage.getItem('token')
                console.log(x.slice(x.indexOf('id')+5).replaceAll('"','').replaceAll('}',''))
                var memberid = x.slice(x.indexOf('id')+5).replaceAll('"','').replaceAll('}','')
                console.log('Premium component memberid: ', memberid)

                const fetchData = async () => {
                    const response = await checkPremium(memberid)
                    console.log('Premium component response: ', response)
                    if(response.reply === -1 || response.reply === 0) navigate('/')
                }

                fetchData()
            }

            //fetch all premium contents
            fetch("http://localhost:9000/oracle/panime")
                .then(response => response.json())
                .then(data => setPanimes(data))
        
            fetch("http://localhost:9000/oracle/pmanga")
                .then(response => response.json())
                .then(data => setPmangas(data))
        }else{
            navigate('/authentication')
        }
    }, [token])

    const changeGenre = (g) => {
        console.log('Selected premium genre: ', g)
        fetch(`http://localhost:9000/oracle/panimegenre/${g}`)
            .then(response => response.json())
            .then(data => setPanimes(data))

        fetch(`http://localhost:9000/oracle/pmangagenre/${g}`)
        .then(response => response.json())
        .then(data => setPmangas(data))
    }

    return(
        <Box sx={{ flexGrow: 1 }}>
            <Box sx={{ flexGrow: 1 }}>
                <Stack spacing={2} direction="row">
                    {genres.map(genre => (
                        <Button variant="outlined" onClick={() => changeGenre(genre.GENRENAME)}>
                            {genre.GENRENAME}
                        </Button>
                    ))}
                </Stack>
            </Box>
            <h1>Premium Animes</h1>
            <Grid container spacing={{ xs: 2, md: 3 }} columns={{ xs: 4, sm: 8, md: 12 }}>
                {panimes.map(panime => (
                    <Grid item xs={2} sm={4} md={4} key={panime.PANIMEID}>
                        <Box sx={{ minWidth: 275 }}>
                            <Card variant="outlined">
                                <AnimeCard 
                                    url="/panime/" 
                                    animeId={panime.PANIMEID} 
                                    title={panime.TITLE} 
                                    synopsis={panime.SYNOPSIS} 
                                    release={panime['Release Date']} 
                                />
                            </Card>
                        </Box>
                    </Grid>
                ))}
            </Grid>
            <h1>Premium Mangas</h1>
            <Grid container spacing={{ xs: 2, md: 3 }} columns={{ xs: 4, sm: 8, md: 12 }}>
                {pmangas.map(pmanga => (
                    <Grid item xs={2} sm={4} md={4} key={pmanga.PMANGAID}>
                        <Box sx={{ minWidth: 275 }}>
                            <Card variant="outlined">
                                <MangaCard 
                                    url="/pmanga/" 
                                    mangaId={pmanga.PMANGAID} 
                                    title={pmanga.TITLE} 
                                    synopsis={pmanga.SYNOPSIS} 
                                    release={pmanga['Release Date']} 
                                />
                            </Card>
                        </Box>
                    </Grid>
                ))}
            </Grid>
        </Box>
    )
}

export default Premium