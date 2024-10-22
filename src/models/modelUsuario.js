import {db} from '../config/database.js';

function Login(email, senha, callback){
    let ssql = "SELECT * ";
    ssql += "from users ";
    ssql += "where email=? and senha=?";

    db.query(ssql, [email, senha], (err, result)=>{
       
        callback(err, result);
       
        // if(err){
        //     callback(err, []);
        // }else{
        //     callback(undefined, result);
        // }
    });
}

function Inserir(nome, email, senha, callback){
    let ssql = "INSERT INTO `users`(`nome`, `email`, `senha`) ";
    ssql += "VALUES (?,?,?) ";

    db.query(ssql, [nome, email, senha], (err, result)=>{
        
        callback(err, result);
    });

     
}

function GetEmailUser(email, callback) {
    const ssql = "SELECT EMAIL FROM USERS WHERE EMAIL = ?";

    db.query(ssql, [email], (err, result) => {
        if (err) {
            return callback(err, null); // Retorna o erro ao callback
        }

        if (result.length > 0) {
            // Se houver resultado, o email existe
            return callback(null, true);
        } else {
            // Se não houver resultado, o email não existe
            return callback(null, false);
        }
    });
}

function ListarId(req, res){
    
}

function Editar(req, res){
   
}

export default {Login, Inserir, ListarId, Editar, GetEmailUser}