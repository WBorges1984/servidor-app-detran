import mysql from 'mysql'

const db = mysql.createPool({
    connectionLimit: 10,
    host: "localhost",
    user: "root",
    password: "12345",
    database:"bd_detran"
});

db.getConnection((err, conn)=>{
    if(err){
        console.log(err)
    }
})

export {db};