import { Router } from "express";
import controllerResultado from "../controllers/controller.resultado.js";

const routeResultado = Router();

routeResultado.get("/v1/resultados", controllerResultado.Resultados);

routeResultado.get("/v1/resultado/provanr", controllerResultado.ProvaNr);

routeResultado.post("/v1/resultado", controllerResultado.InsertResult);


export default routeResultado;