import { Router } from "express";
import controllerUsuario from "../controllers/controller.usuario.js";
import { check, validationResult } from "express-validator"

const routeUsuario = Router();

routeUsuario.post("/v1/usuarios/login", controllerUsuario.Login);

routeUsuario.post("/v1/usuarios/registro", controllerUsuario.Inserir);

routeUsuario.get("/v1/usuarios/:id_usuarios", controllerUsuario.ListarId);

routeUsuario.put("/v1/usuarios", controllerUsuario.Editar);

routeUsuario.get(
    "/v1/usuarios/email/:email", 
    [
        check('email').isEmail().withMessage('Por favor, forneça um email válido.')
    ],
    (req, res, next) => {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return res.status(400).json({ errors: errors.array() });
        }
        next();
    },
    controllerUsuario.GetEmailUser
);

export default routeUsuario;