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

function InsertResult(user, prova_nr, tempo, acertos, callback) {
    let ssql = "INSERT INTO `result`(`user`, `prova_nr`, `dt_prova`, `tempo`, `acertos`) ";
    ssql += "VALUES (?, ?, CURDATE(), ?, ?);"; // Usando CURDATE() diretamente na string SQL

    db.query(ssql, [user, prova_nr, tempo, acertos], (err, result) => {
        callback(err, result);
    });
}

export default{Resultado, ProvaNr, InsertResult}