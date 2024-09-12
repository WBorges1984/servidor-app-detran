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

export default {Resultados}