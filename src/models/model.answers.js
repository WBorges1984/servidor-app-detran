import {db} from '../config/database.js';

function PesquisaAll(callback) {
    let answerQuery = "SELECT user_id, pagina, question_id, selected_option FROM `answers` WHERE 1 ORDER BY pagina asc;";
    
    db.query(answerQuery, (err, answers) => {
        if (err) {
            callback(err, null);
            return;
        }

        // Mapeia os question_ids únicos para pesquisar na tabela options
        let promises = answers.map((answer) => {
            return new Promise((resolve, reject) => {
                // Faz a busca na tabela options baseado no question_id
                let optionsQuery = "SELECT * FROM `options` WHERE question_id = ?";
                db.query(optionsQuery, [answer.question_id], (err, options) => {
                    if (err) {
                        reject(err);
                        return;
                    }
                    
                    // Filtra a opção correta (letter 'A') e a opção selecionada pelo usuário
                    const correctOption = options.find(opt => opt.option_letter === 'A');
                    const selectedOption = options.find(opt => opt.id === answer.selected_option);
                    
                    // Se o usuário escolheu a opção correta, retorna apenas a correta
                    if (selectedOption && selectedOption.option_letter === 'A') {
                        answer.options = [correctOption];
                    } else {
                        // Caso contrário, retorna a correta e a selecionada
                        answer.options = [correctOption, selectedOption];
                    }

                    resolve(answer);
                });
            });
        });

        // Espera todas as queries serem executadas
        Promise.all(promises)
            .then(results => {
                callback(null, results);
            })
            .catch(err => {
                callback(err, null);
            });
    });
}

function InserirResposta(idQuestion, userId, selectedOption, pagina, callback){
    let ssql = "INSERT INTO `answers`(`question_id`, `user_id`, `selected_option`, `pagina`) ";
    ssql += "VALUES (?,?,?,?) ";

    db.query(ssql, [idQuestion, userId, selectedOption, pagina], (err, result)=>{
        
        callback(err, result);
    });

     
}

export default {PesquisaAll, InserirResposta}