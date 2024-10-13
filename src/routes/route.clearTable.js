import { Router } from "express";
import controllerClearTable from "../controllers/controller.clearTable.js";

const routeClearTable = Router();

routeClearTable.put("/v1/truncate", controllerClearTable.clearTable);

export default routeClearTable;

