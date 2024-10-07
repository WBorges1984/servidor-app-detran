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

function cadastrarPerguntaEDescricao(questionText, imageUrl, correctOption, opcoes, callback) {
    db.getConnection((err, connection) => {
        if (err) {
            return callback(err, null);
        }

        // Iniciar transação
        connection.beginTransaction((err) => {
            if (err) {
                connection.release();  // Liberar a conexão de volta ao pool
                return callback(err, null);
            }

            // Inserir a pergunta
            const queryQuestion = `INSERT INTO questions (question_text, image_url, correct_option) VALUES (?, ?, ?)`;
            connection.query(queryQuestion, [questionText, imageUrl, correctOption], (err, result) => {
                if (err) {
                    return connection.rollback(() => {
                        connection.release();
                        callback(err, null);
                    });
                }

                const questionId = result.insertId;

                // Inserir as opções
                const optionsData = opcoes.map((opcao) => [questionId, opcao.optionLetter, opcao.optionText]);
                const queryOptions = `INSERT INTO options (question_id, option_letter, option_text) VALUES ?`;
                connection.query(queryOptions, [optionsData], (err) => {
                    if (err) {
                        return connection.rollback(() => {
                            connection.release();
                            callback(err, null);
                        });
                    }

                    // Finalizar transação
                    connection.commit((err) => {
                        if (err) {
                            return connection.rollback(() => {
                                connection.release();
                                callback(err, null);
                            });
                        }
                        connection.release();
                        callback(null, { message: 'Pergunta e opções cadastradas com sucesso!' });
                    });
                });
            });
        });
    });
}


export default { Pesquisa, PesquisaAll, PorDescricao, cadastrarPerguntaEDescricao };
