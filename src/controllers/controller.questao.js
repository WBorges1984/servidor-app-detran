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

function cadastrarPerguntaEDescricao(req, res){

    const { questionText, imageUrl, correctOption, opcoes } = req.body;

    // Verifica se todos os dados necessários foram passados
    if (!questionText || !correctOption || !opcoes || !Array.isArray(opcoes)) {
        return res.status(400).json({ error: "Dados incompletos. Verifique a descrição da pergunta, a opção correta e as opções de resposta." });
    }

    // Chama o modelo passando os dados da pergunta e opções
    modelQuestao.cadastrarPerguntaEDescricao(questionText, imageUrl, correctOption, opcoes, (err, result) => {
        if (err) {
            return res.status(500).json({ error: "Erro ao cadastrar a pergunta e opções", details: err });
        }

        // Resposta de sucesso
        res.status(200).json({ message: "Pergunta e opções cadastradas com sucesso!", result });
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

export default {Pesquisa,PesquisaAll, PorDescricao, cadastrarPerguntaEDescricao}