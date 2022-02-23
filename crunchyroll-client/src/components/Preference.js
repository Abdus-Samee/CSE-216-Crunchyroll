import { useState, useEffect } from "react"
import Box from '@mui/material/Box'
import Card from '@mui/material/Card'
import Grid from '@mui/material/Grid'
import AnimeCard from "./Card"
import MangaCard from "./MangaCard"

function Preference() {
    const [animes, setAnimes] = useState([])
    const [mangas, setMangas] = useState([])

    useEffect(() => {
        fetch("http://localhost:9000/oracle/anime")
            .then(response => response.json())
            .then(data => setAnimes(data))
        
        fetch("http://localhost:9000/oracle/manga")
        .then(response => response.json())
        .then(data => setMangas(data))
    }, [])

    return (
        <Box sx={{ flexGrow: 1 }}>
            <h1>Animes</h1>
            <Grid container spacing={{ xs: 2, md: 3 }} columns={{ xs: 4, sm: 8, md: 12 }}>
                {animes.map(anime => (
                    <Grid item xs={2} sm={4} md={4} key={anime.ANIMEID}>
                        <Box sx={{ minWidth: 275 }}>
                            <Card variant="outlined">
                                <AnimeCard url="/anime/" animeId={anime.ANIMEID} title={anime.TITLE} synopsis={anime.SYNOPSIS} release={anime['Release Date']} />
                            </Card>
                        </Box>
                    </Grid>
                ))}
            </Grid>
            <h1>Mangas</h1>
            <Grid container spacing={{ xs: 2, md: 3 }} columns={{ xs: 4, sm: 8, md: 12 }}>
                {mangas.map(manga => (
                    <Grid item xs={2} sm={4} md={4} key={manga.MANGAID}>
                        <Box sx={{ minWidth: 275 }}>
                            <Card variant="outlined">
                                <MangaCard url='/manga/' mangaId={manga.MANGAID} title={manga.TITLE} synopsis={manga.SYNOPSIS} release={manga['Release Date']} />
                            </Card>
                        </Box>
                    </Grid>
                ))}
            </Grid>
        </Box>
    )
}

export default Preference
