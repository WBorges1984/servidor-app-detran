import { Router } from "express";
import controllerQuestao from "../controllers/controller.questao.js";

const routeQuestao = Router();

routeQuestao.get("/v1/questao/:id", controllerQuestao.Pesquisa);


export default routeQuestao;