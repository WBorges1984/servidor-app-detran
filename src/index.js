import express from 'express';
import cors from 'cors';

import routeUsuario from './routes/route.usuario.js';

const app = express();

app.use(express.json());
app.use(cors({origin:'http://10.1.1.101:8081'}));

app.use(routeUsuario)

app.listen(8082, ()=>{
    console.log("Servidor rodando na porta 8082")
})