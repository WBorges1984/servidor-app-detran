import {db} from '../config/database.js';

function Resultado(callback){
    let ssql = "SELECT * ";
    ssql += "from result ";
    // ssql += "where 1=1";

    db.query(ssql, [], (err, result)=>{
       
        callback(err, result);
       
    });
}

function ProvaNr(callback){
    let ssql = "SELECT MAX(prova_nr) as nr ";
    ssql += "from result ";

    db.query(ssql, [], (err, result)=>{
       
        callback(err, result);
       
    });
}

export default{Resultado, ProvaNr}