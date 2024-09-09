import { Router } from "express";
import controllerUsuario from "../controllers/controller.usuario.js";

const routeUsuario = Router();

routeUsuario.post("/v1/usuarios/login", controllerUsuario.Login);

routeUsuario.post("/v1/usuarios/registro", controllerUsuario.Inserir);

routeUsuario.get("/v1/usuarios/:id_usuarios", controllerUsuario.ListarId);

routeUsuario.put("/v1/usuarios", controllerUsuario.Editar);

export default routeUsuario;