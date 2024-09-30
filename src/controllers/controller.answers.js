import modelAnswers from "../models/model.answers.js";

function PesquisaAll(req, res) {
    modelAnswers.PesquisaAll((err, result) => {
        if (err) {
            return res.status(500).send(err);
        } else if (result.length === 0) {
            return res.status(401).json({ erro: "Erro ao consulta respostas!" });
        } else {
            return res.status(200).json(result);
        }
    });
}

function InserirResposta(req, res) {
    const { idQuestion, userId, selectedOption, pagina } = req.body;

    // Lista de campos esperados
    const camposEsperados = ['idQuestion', 'userId', 'selectedOption', 'pagina'];
    const camposRecebidos = Object.keys(req.body);

    // Verificar se existem campos extras
    const camposExtras = camposRecebidos.filter(campo => !camposEsperados.includes(campo));
    if (camposExtras.length > 0) {
        return res.status(400).json({ erro: `Campos extras não permitidos: ${camposExtras.join(', ')}` });
    }

    // Verificar se faltam campos obrigatórios
    if (!idQuestion || !userId || !selectedOption || !pagina) {
        return res.status(400).json({ erro: "Todos os campos são obrigatórios" });
    }

    modelAnswers.InserirResposta(idQuestion, userId, selectedOption, pagina, (err, result) => {
        if (err) {
            return res.status(500).send(err);
        }

        // Verificar se a inserção foi bem-sucedida
        if (result.affectedRows > 0) {
            return res.status(201).json({ mensagem: "Resposta cadastrada com sucesso", result });
        } else {
            return res.status(401).json({ erro: "Erro ao cadastrar resposta" });
        }
    });
}


export default { PesquisaAll, InserirResposta};
