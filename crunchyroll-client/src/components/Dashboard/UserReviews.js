import { useEffect, useState } from "react"
import Table from '@mui/material/Table'
import TableBody from '@mui/material/TableBody'
import TableCell from '@mui/material/TableCell'
import TableContainer from '@mui/material/TableContainer'
import TableHead from '@mui/material/TableHead'
import TableRow from '@mui/material/TableRow'
import Paper from '@mui/material/Paper'

const UserReviews = ({id}) => {
    const [animes, setAnimes] = useState([])
    const [panimes, setPAnimes] = useState([])
    const [mangas, setMangas] = useState([])
    const [pmangas, setPMangas] = useState([])

    useEffect(() => {
        fetch(`http://localhost:9000/users/reviews/anime/${id}`)
            .then(res => res.json())
            .then(data => setAnimes(data))
        
        fetch(`http://localhost:9000/users/reviews/manga/${id}`)
            .then(res => res.json())
            .then(data => setMangas(data))

        fetch(`http://localhost:9000/users/reviews/panime/${id}`)
            .then(res => res.json())
            .then(data => setPAnimes(data))

        fetch(`http://localhost:9000/users/reviews/pmanga/${id}`)
            .then(res => res.json())
            .then(data => setPMangas(data))
    }, [])

    return(
        <div>
            {animes.length > 0 && 
                <div>
                    <h1>Anime Reviews</h1>
                    <TableContainer component={Paper}>
                        <Table sx={{ minWidth: 650 }} aria-label="simple table">
                            <TableHead>
                                <TableRow>
                                    <TableCell align="right">TITLE</TableCell>
                                    <TableCell align="right">TEXT</TableCell>
                                    <TableCell align="right">RATING</TableCell>
                                    <TableCell align="right">TIME</TableCell>
                                </TableRow>
                            </TableHead>
                            <TableBody>
                            {animes.map((anime) => (
                                <TableRow
                                    key={anime.TITLE}
                                    sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                                >
                                    <TableCell component="th" scope="row">
                                        {anime.TITLE}
                                    </TableCell>
                                    <TableCell align="right">{anime.TEXT}</TableCell>
                                    <TableCell align="right">{anime.RATING}</TableCell>
                                    <TableCell align="right">{new Date(anime.TIME).toLocaleDateString()}</TableCell>
                                </TableRow>
                            ))}
                            </TableBody>
                        </Table>
                    </TableContainer>
                </div>
            }
            {mangas.length > 0 && 
                <div>
                    <h1>Manga Reviews</h1>
                    <TableContainer component={Paper}>
                        <Table sx={{ minWidth: 650 }} aria-label="simple table">
                            <TableHead>
                                <TableRow>
                                    <TableCell align="right">TITLE</TableCell>
                                    <TableCell align="right">TEXT</TableCell>
                                    <TableCell align="right">RATING</TableCell>
                                    <TableCell align="right">TIME</TableCell>
                                </TableRow>
                            </TableHead>
                            <TableBody>
                            {mangas.map((manga) => (
                                <TableRow
                                    key={manga.TITLE}
                                    sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                                >
                                    <TableCell component="th" scope="row">
                                        {manga.TITLE}
                                    </TableCell>
                                    <TableCell align="right">{manga.TEXT}</TableCell>
                                    <TableCell align="right">{manga.RATING}</TableCell>
                                    <TableCell align="right">{new Date(manga.TIME).toLocaleDateString()}</TableCell>
                                </TableRow>
                            ))}
                            </TableBody>
                        </Table>
                    </TableContainer>
                </div>
            }
            {panimes.length > 0 && 
                <div>
                    <h1>Premium Anime Reviews</h1>
                    <TableContainer component={Paper}>
                        <Table sx={{ minWidth: 650 }} aria-label="simple table">
                            <TableHead>
                                <TableRow>
                                    <TableCell align="right">TITLE</TableCell>
                                    <TableCell align="right">TEXT</TableCell>
                                    <TableCell align="right">RATING</TableCell>
                                    <TableCell align="right">TIME</TableCell>
                                </TableRow>
                            </TableHead>
                            <TableBody>
                            {panimes.map((anime) => (
                                <TableRow
                                    key={anime.TITLE}
                                    sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                                >
                                    <TableCell component="th" scope="row">
                                        {anime.TITLE}
                                    </TableCell>
                                    <TableCell align="right">{anime.TEXT}</TableCell>
                                    <TableCell align="right">{anime.RATING}</TableCell>
                                    <TableCell align="right">{new Date(anime.TIME).toLocaleString()}</TableCell>
                                </TableRow>
                            ))}
                            </TableBody>
                        </Table>
                    </TableContainer>
                </div>
            }
            {pmangas.length > 0 && 
                <div>
                    <h1>Premium Manga Reviews</h1>
                    <TableContainer component={Paper}>
                        <Table sx={{ minWidth: 650 }} aria-label="simple table">
                            <TableHead>
                                <TableRow>
                                    <TableCell align="right">TITLE</TableCell>
                                    <TableCell align="right">TEXT</TableCell>
                                    <TableCell align="right">RATING</TableCell>
                                    <TableCell align="right">TIME</TableCell>
                                </TableRow>
                            </TableHead>
                            <TableBody>
                            {pmangas.map((manga) => (
                                <TableRow
                                    key={manga.TITLE}
                                    sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                                >
                                    <TableCell component="th" scope="row">
                                        {manga.TITLE}
                                    </TableCell>
                                    <TableCell align="right">{manga.TEXT}</TableCell>
                                    <TableCell align="right">{manga.RATING}</TableCell>
                                    <TableCell align="right">{new Date(manga.TIME).toLocaleString()}</TableCell>
                                </TableRow>
                            ))}
                            </TableBody>
                        </Table>
                    </TableContainer>
                </div>
            }
        </div>
    )
}

export default UserReviews