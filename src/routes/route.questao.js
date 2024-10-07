import { Router } from "express";
import controllerQuestao from "../controllers/controller.questao.js";

const routeQuestao = Router();

routeQuestao.get("/v1/questao/:id", controllerQuestao.Pesquisa);

routeQuestao.get("/v1/questao/descricao/:descricao", controllerQuestao.PorDescricao);

routeQuestao.get("/v1/questao", controllerQuestao.PesquisaAll);

routeQuestao.post("/v1/questao", controllerQuestao.cadastrarPerguntaEDescricao);

export default routeQuestao;