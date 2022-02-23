const oracledb = require('oracledb')
oracledb.outFormat = oracledb.OBJECT

if (process.platform === 'win32') {
    try {
      oracledb.initOracleClient({libDir: 'E:\\instantclient-basic-windows.x64-21.3.0.0.0\\instantclient_21_3'})   // note the double backslashes
    } catch (err) {
      console.error('Whoops!')
      console.error(err)
      process.exit(1)
    }
}

class Repository {
    constructor() {
        this.connection = undefined
    }

    query = async function (query, params) {
        if (this.connection === undefined) {
            this.connection = await oracledb.getConnection({
                user: "hr",
                password: "hr",
                connectionString: "(DESCRIPTION =(ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))(CONNECT_DATA =(SID= ORCL)))"
            })
        }
        try {
            let result = await this.connection.execute(query, params);
            return {
                success:true,
                data: result.rows
            }

        } catch (error) {
            console.log(error)
            return {
                success:false,
                error
            }
        }
    };
}

exports.Repository = Repository