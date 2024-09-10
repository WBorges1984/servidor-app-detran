import modelUsuario from "../models/modelUsuario.js";


function Login(req, res){
    
    modelUsuario.Login(req.body.email, req.body.senha, (err, result)=>{
        console.log(result)
        if(err){
            res.status(500).send(err);
        }else if(result.length == 0){
            res.status(401).json({erro: "E-mail ou senha inválida!"});
        }else{
            res.status(200).json(result[0]);
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