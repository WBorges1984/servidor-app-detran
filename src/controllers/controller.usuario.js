import modelUsuario from "../models/modelUsuario.js";


function Login(req, res){
    
    modelUsuario.Login(req.body.email, req.body.senha, (err, result)=>{
        if(err){
            res.status(500).send(err);
        }else if(result == undefined){
            res.status(401).json({erro: "E-mail ou senha inválida!"});
        }else{
            res.status(200).json(result);
        }
    });
}

function Inserir(req, res){
    res.status(200).json({id_usuario: 123});
}

function ListarId(req, res){
    res.status(200).json({id_usuario: 123});
}

function Editar(req, res){
    res.status(200).json({id_usuario: 123});
}

export default {Login, Inserir, ListarId, Editar}