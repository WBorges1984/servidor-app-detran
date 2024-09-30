import {db} from '../config/database.js';

function PesquisaAll(callback){
    let ssql = "SELECT * FROM `answers` WHERE 1=1 ORDER BY pagina asc; ";

    db.query(ssql,(err, result)=>{
       
        callback(err, result);
       
        // if(err){
        //     callback(err, []);
        // }else{
        //     callback(undefined, result);
        // }
    });
}

function InserirResposta(idQuestion, userId, selectedOption, pagina, callback){
    let ssql = "INSERT INTO `answers`(`question_id`, `user_id`, `selected_option`, `pagina`) ";
    ssql += "VALUES (?,?,?,?) ";

    db.query(ssql, [idQuestion, userId, selectedOption, pagina], (err, result)=>{
        
        callback(err, result);
    });

     
}

export default {PesquisaAll, InserirResposta}