import { Router } from "express";
import controllerAnswers from "../controllers/controller.answers.js";

const routeAnswers = Router();

routeAnswers.get("/v1/answers", controllerAnswers.PesquisaAll);

routeAnswers.post("/v1/answers/inserir", controllerAnswers.InserirResposta);

routeAnswers.get("/v1/answers/ErrosAcertos", controllerAnswers.qtdErrosAcertos);

routeAnswers.get("/v1/answers/first", controllerAnswers.FirstQuestion);

export default routeAnswers;