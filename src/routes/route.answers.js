import { Router } from "express";
import controllerAnswers from "../controllers/controller.answers.js";

const routeAnswers = Router();

routeAnswers.get("/v1/answers", controllerAnswers.PesquisaAll);

routeAnswers.post("/v1/answers/inserir", controllerAnswers.InserirResposta);

routeAnswers.put("/v1/answers/clear", controllerAnswers.ClearTable);

export default routeAnswers;