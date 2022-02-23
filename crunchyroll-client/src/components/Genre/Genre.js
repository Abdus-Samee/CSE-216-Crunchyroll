import { useState, useEffect } from "react"
import Box from '@mui/material/Box'
import Card from '@mui/material/Card'
import Grid from '@mui/material/Grid'
import Button from '@mui/material/Button'
import Stack from '@mui/material/Stack'

import AnimeCard from "../Card"
import MangaCard from "../MangaCard"

const Genre = () => {
    const [genres, setGenres] = useState([])
    const [animes, setAnimes] = useState([])
    const [mangas, setMangas] = useState([])

    useEffect(() => {
        fetch("http://localhost:9000/oracle/genres")
            .then(response => response.json())
            .then(data => setGenres(data))
    }, [])

    const fetchGenres = (g) => {
        console.log(g)
        fetch("http://localhost:9000/oracle/animegenre/"+g)
            .then(response => response.json())
            .then(data => setAnimes(data))

        fetch("http://localhost:9000/oracle/mangagenre/"+g)
        .then(response => response.json())
        .then(data => setMangas(data))
    }

    return (
        <div style={{ marginTop: '25px' }}>
            <Box sx={{ flexGrow: 1 }}>
                <Stack spacing={2} direction="row">
                    {genres.map(genre => (
                        <Button variant="outlined" onClick={() => fetchGenres(genre.GENRENAME)}>
                            {genre.GENRENAME}
                        </Button>
                    ))}
                </Stack>
            </Box>
            <Box sx={{ flexGrow: 1 }}>
                <h1>Animes</h1>
                <Grid container spacing={{ xs: 2, md: 3 }} columns={{ xs: 4, sm: 8, md: 12 }}>
                    {animes.map(anime => (
                        <Grid item xs={2} sm={4} md={4} key={anime.ID}>
                            <Box sx={{ minWidth: 275 }}>
                                <Card variant="outlined">
                                    <AnimeCard animeId={anime.ANIMEID} title={anime.TITLE} synopsis={anime.SYNOPSIS} release={anime['Release Date']} />
                                </Card>
                            </Box>
                        </Grid>
                    ))}
                </Grid>
                <h1>Mangas</h1>
                <Grid container spacing={{ xs: 2, md: 3 }} columns={{ xs: 4, sm: 8, md: 12 }}>
                    {mangas.map(manga => (
                        <Grid item xs={2} sm={4} md={4} key={manga.ID}>
                            <Box sx={{ minWidth: 275 }}>
                                <Card variant="outlined">
                                    <MangaCard mangaId={manga.MANGAID} title={manga.TITLE} synopsis={manga.SYNOPSIS} release={manga['Release Date']} />
                                </Card>
                            </Box>
                        </Grid>
                    ))}
                </Grid>
            </Box>
        </div>
    )
}

export default Genre
