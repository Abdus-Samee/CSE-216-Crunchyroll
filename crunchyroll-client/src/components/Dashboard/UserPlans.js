import { useEffect, useState } from 'react'
import Table from '@mui/material/Table'
import TableBody from '@mui/material/TableBody'
import TableCell from '@mui/material/TableCell'
import TableContainer from '@mui/material/TableContainer'
import TableHead from '@mui/material/TableHead'
import TableRow from '@mui/material/TableRow'
import Paper from '@mui/material/Paper'

const UserPlans = ({id}) => {
    const [plans, setPlans] = useState([])

    useEffect(() => {
        fetch(`http://localhost:9000/users/plans/${id}`)
            .then(res => res.json())
            .then(data => setPlans(data))
    }, [])

    return(
        <div>
            <TableContainer component={Paper}>
                <Table sx={{ minWidth: 650 }} aria-label="simple table">
                    <TableHead>
                        <TableRow>
                            <TableCell align="right">PLAN RANGE</TableCell>
                            <TableCell align="right">COST</TableCell>
                            <TableCell align="right">START</TableCell>
                            <TableCell align="right">END</TableCell>
                        </TableRow>
                    </TableHead>
                    <TableBody>
                    {plans.map((plan, idx) => (
                        <TableRow
                            key={idx}
                            sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                        >
                            <TableCell component="th" scope="row">
                                {plan.PLANRANGE}
                            </TableCell>
                            <TableCell align="right">{plan.COST}</TableCell>
                            <TableCell align="right">{new Date(plan.STARTDATE).toLocaleDateString()}</TableCell>
                            <TableCell align="right">{new Date(plan.ENDDATE).toLocaleDateString()}</TableCell>
                        </TableRow>
                    ))}
                    </TableBody>
                </Table>
            </TableContainer>
        </div>
    )
}

export default UserPlans