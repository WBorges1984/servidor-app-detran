import {db} from '../config/database.js';

function Resultado(callback){
    let ssql = "SELECT * ";
    ssql += "from result ";
    // ssql += "where 1=1";

    db.query(ssql, [], (err, result)=>{
       
        callback(err, result);
       
    });
}
export default{Resultado}