import modelValidaEmail from "../models/modelValidaEmail.js";

function ValidaEmail(req, res) {
    modelValidaEmail.ValidaEmail(req.params.email, (err, result) => {
        if (err) {
            return res.status(500).json({ message: "Erro ao enviar email", error: err.message });
        } else {
            return res.status(200).json({
                message: "Email enviado com sucesso",
                code: result.code // Retorna o código gerado, se necessário
            });
        }
    });
}

export default { ValidaEmail };