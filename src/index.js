import express from 'express';
import cors from 'cors';

import routeUsuario from './routes/route.usuario.js';
import routeQuestao from './routes/route.questao.js';

const app = express();

app.use(express.json());
app.use(cors({origin:['http://10.1.1.101:8082', 'http://localhost:8082']}));

app.use(routeUsuario)
app.use(routeQuestao)

app.listen(8082, ()=>{
    console.log("Servidor rodando na porta 8082")
})