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

function ListarId(req, res){
    
}

function Editar(req, res){
   
}

export default {Login, Inserir, ListarId, Editar}