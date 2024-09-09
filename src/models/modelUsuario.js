import {db} from '../config/database.js';

function Login(email, senha, callback){
    let ssql = "SELECT * ";
    ssql += "from users ";
    ssql += "where email=? and senha=?";

    db.query(ssql, [email, senha], (err, result)=>{
       
        callback(err, result[0]);
       
        // if(err){
        //     callback(err, []);
        // }else{
        //     callback(undefined, result);
        // }
    });
}

function Inserir(req, res){
   
}

function ListarId(req, res){
    
}

function Editar(req, res){
   
}

export default {Login, Inserir, ListarId, Editar}