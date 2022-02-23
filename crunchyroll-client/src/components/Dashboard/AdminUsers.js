import { useEffect, useState } from 'react'
import Table from '@mui/material/Table'
import TableBody from '@mui/material/TableBody'
import TableCell from '@mui/material/TableCell'
import TableContainer from '@mui/material/TableContainer'
import TableHead from '@mui/material/TableHead'
import TableRow from '@mui/material/TableRow'
import Paper from '@mui/material/Paper'

const AdminUsers = () => {
    const [users, setUsers] = useState([])

    useEffect(() => {
        fetch('http://localhost:9000/users')
            .then(res => res.json())
            .then(data => setUsers(data))
    }, [])

    return(
        <TableContainer component={Paper}>
            <Table sx={{ minWidth: 650 }} aria-label="simple table">
                <TableHead>
                <TableRow>
                    <TableCell align="right">ID</TableCell>
                    <TableCell align="right">EMAIL</TableCell>
                    <TableCell align="right">WALLET</TableCell>
                    <TableCell align="right">PREMIUM</TableCell>
                </TableRow>
                </TableHead>
                <TableBody>
                {users.map((user) => (
                    <TableRow
                        key={user.ID}
                        sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                    >
                        <TableCell component="th" scope="row">
                            {user.ID}
                        </TableCell>
                        <TableCell align="right">{user.EMAIL}</TableCell>
                        <TableCell align="right">{user.WALLET}</TableCell>
                        <TableCell align="right">{user.PREMIUM}</TableCell>
                    </TableRow>
                ))}
                </TableBody>
            </Table>
        </TableContainer>
    )
}

export default AdminUsers