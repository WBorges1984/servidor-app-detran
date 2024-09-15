import modelUsuario from "../models/modelUsuario.js";

function Login(req, res) {
    modelUsuario.Login(req.body.email, req.body.senha, (err, result) => {
        if (err) {
            return res.status(500).send(err);
        } else if (result.length === 0) {
            return res.status(401).json({ erro: "E-mail ou senha inválida!" });
        } else {
            return res.status(200).json(result[0]);
        }
    });
}

function Inserir(req, res) {
    const { nome, email, senha } = req.body;

    // Lista de campos esperados
    const camposEsperados = ['nome', 'email', 'senha'];
    const camposRecebidos = Object.keys(req.body);

    // Verificar se existem campos extras
    const camposExtras = camposRecebidos.filter(campo => !camposEsperados.includes(campo));
    if (camposExtras.length > 0) {
        return res.status(400).json({ erro: `Campos extras não permitidos: ${camposExtras.join(', ')}` });
    }

    // Verificar se faltam campos obrigatórios
    if (!nome || !email || !senha) {
        return res.status(400).json({ erro: "Todos os campos (nome, email, senha) são obrigatórios" });
    }

    modelUsuario.Inserir(nome, email, senha, (err, result) => {
        if (err) {
            return res.status(500).send(err);
        }

        // Verificar se a inserção foi bem-sucedida
        if (result.affectedRows > 0) {
            return res.status(201).json({ mensagem: "Usuário cadastrado com sucesso", result });
        } else {
            return res.status(401).json({ erro: "Erro ao cadastrar usuário" });
        }
    });
}

function ListarId(req, res) {
    return res.status(200).json({ id_usuario: 123 });
}

function Editar(req, res) {
    return res.status(200).json({ id_usuario: 123 });
}

export default { Login, Inserir, ListarId, Editar };
