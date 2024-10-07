import modelQuestao from "../models/model.questao.js";


function Pesquisa(req, res){
    // console.log(req.params.id)
   
    modelQuestao.Pesquisa(req.params.id, (err, result)=>{
        
        if(err){
            res.status(500).send(err);
        }else if(result.length == 0){
            res.status(401).json({erro: "Não localizado nenhuma questão"});
        }else{
            res.status(200).json(result);
        }
    });
}

function PorDescricao(req, res){
    console.log('88888888888')

    modelQuestao.PorDescricao(req.params.descricao, (err, result)=>{
        if(err){
            res.status(500).send(err);
        }else if(result.length == 0){
            res.status(200).json({Resultado: "Não localizado nenhuma questão"});
        }else{
            res.status(200).json(result);
        }
    });
}


function PesquisaAll(req, res){

modelQuestao.PesquisaAll((err, result)=>{
        
    if(err){
        res.status(500).send(err);
    }else if(result.length == 0){
        res.status(401).json({erro: "Não localizado nenhuma questão"});
    }else{
        res.status(200).json(result);
    }
});
}

export default {Pesquisa,PesquisaAll, PorDescricao}