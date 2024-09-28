import { Router } from "express";
import controllerAnswers from "../controllers/controller.answers.js";

const routeAnswers = Router();

routeAnswers.get("/v1/answers", controllerAnswers.PesquisaAll);

routeAnswers.post("/v1/answers/inserir", controllerAnswers.InserirResposta);

export default routeAnswers;