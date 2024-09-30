import modelResultado from "../models/model.resultado.js";


function Resultados(req, res){
    // console.log(req.params.id)

    modelResultado.Resultado((err, result)=>{
        
        if(err){
            res.status(500).send(err);
        }else if(result.length == 0){
            res.status(401).json({erro: "Não localizado nenhuma questão"});
        }else{
            res.status(200).json(result);
        }
    });
}


function ProvaNr(req, res){

    modelResultado.ProvaNr((err, result)=>{
        
        if(err){
            res.status(500).send(err);
        }else if(result.length == 0){
            res.status(401).json({erro: "Erro ao tentar localizar Número da ultima prova."});
        }else{
            res.status(200).json(result[0]);
        }
    });
}

export default {Resultados, ProvaNr}