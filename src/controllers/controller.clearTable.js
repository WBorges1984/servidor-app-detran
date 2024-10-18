import modelClearTable from "../models/model.clearTable.js";

function clearTable(req, res) {
    const { tableName } = req.body; // Obtém o nome da tabela do corpo da requisição

    // Verifica se o nome da tabela foi informado
    if (!tableName) {
        return res.status(400).json({ error: "Nome da tabela não informado" });
    }

    // Validação do nome da tabela
    const allowedTables = ['answers', 'users', 'products']; // Exemplo de tabelas permitidas
    if (!allowedTables.includes(tableName)) {
        return res.status(400).json({ error: "Tabela não permitida" });
    } 

    // Chama o modelo passando o nome da tabela
    modelClearTable.clearTable(tableName, (err, result) => {
        if (err) {
            console.error('Erro ao truncar a tabela:', err); // Log de erro
            return res.status(500).json({ error: "Erro ao deletar a tabela", details: err });
        } 
        return res.status(200).json({ message: `Tabela ${tableName} zerada com sucesso` });
    });
}
export default { clearTable };