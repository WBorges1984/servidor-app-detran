import { Router } from "express";
import controllerValidaEmail from "../controllers/controller.validaEmail.js";

const routeValidaEmail = Router();

routeValidaEmail.post("/v1/validaEmail/:email", controllerValidaEmail.ValidaEmail);

export default routeValidaEmail;