import modelResultado from "../models/model.resultado.js";


function Resultados(req, res){
    // console.log(req.params.id)

    modelResultado.Resultado((err, result)=>{
        
        if(err){
            res.status(500).send(err);
        }else if(result.length == 0){
            res.status(204).json(0);
        }else{
            res.status(200).json(result);
        }
    });
}


function InsertResult(req, res) {
    const { user, prova_nr, tempo, acertos } = req.body;

    modelResultado.InsertResult(user, prova_nr, tempo, acertos, (err, result) => {
        if (err) {
            return res.status(500).send(err); // Retorna erro do servidor
        } 
        
        if (result.affectedRows === 0) {
            return res.status(400).json({ erro: "Falha ao inserir o resultado" }); // Não foi inserido nada
        } 
        
        return res.status(201).json({ message: "Resultado inserido com sucesso", id: result.insertId }); // Retorna o insertId e sucesso
    });
}


function ProvaNr(req, res){

    modelResultado.ProvaNr((err, result)=>{
        
        if(err){
            res.status(500).send(err);
        }else if(result.length == 0){
            res.status(404).send({erro: "Erro ao tentar localizar Número da ultima prova."});
        }else{
            const {nr} = result[0]
            if(nr == null){
                res.status(200).send('0')    
            }else{
                res.status(200).json(result);
            }
        }
    });
}

export default {Resultados, ProvaNr,InsertResult}