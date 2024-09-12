import { Router } from "express";
import controllerResultado from "../controllers/controller.resultado.js";

const routeResultado = Router();

routeResultado.get("/v1/resultados", controllerResultado.Resultados);


export default routeResultado;