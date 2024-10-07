import { db } from '../config/database.js';

function Pesquisa(id, callback) {
    // Primeira consulta: obter a questão
    let questaoQuery = `
        SELECT id, question_text, image_url, correct_option
        FROM questions
        WHERE id = ?
        
    `;
    
    db.query(questaoQuery, [id], (err, questaoResult) => {
        if (err) {
            callback(err, null);
            return;
        }

        if (questaoResult.length === 0) {
            callback(null, { erro: "Questão não encontrada" });
            return;
        }

        // Segunda consulta: obter as opções para a questão
        let opcoesQuery = `
            SELECT id AS option_id, question_id, option_letter, option_text
            FROM options
            WHERE question_id = ?
        `;

        db.query(opcoesQuery, [id], (err, opcoesResult) => {
            if (err) {
                callback(err, null);
                return;
            }

            // Combinar a questão com as opções
            let questaoComOpcoes = {
                ...questaoResult[0], // Os dados da questão
                opcoes: opcoesResult  // As opções relacionadas
            };

            callback(null, questaoComOpcoes);
        });
    });
}

function PorDescricao(descricao, callback){
    let ssql = "SELECT question_text ";
    ssql += "from questions ";
    ssql += "where question_text=?";

    console.log(ssql)
    db.query(ssql, [descricao], (err, result)=>{
        
        callback(err, result);
    });
}

function PesquisaAll(callback){
    let ssql = "SELECT * ";
    ssql += "from questions ";
    ssql += "where 1=1";

    db.query(ssql,[],(err, result)=>{
       
        callback(err, result);
    });
}

export default { Pesquisa, PesquisaAll, PorDescricao };
