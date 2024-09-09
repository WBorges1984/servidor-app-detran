import jwt from 'jsonwebtoken'

const secretToken="MySecret99"

function createJWT(id_usuario){
    const token = jwt.sign({id_usuario}, secretToken, {
        expiresIn: 99999
    });

    return token
}

function verifyJWT(req, res, next){
    const authToken = req.headers.authorization;

    if (!authToken) {
       return res.status(401).send({message: "Token não informado."})
    }

    const [str, token] = authToken.split(" ");

    jwt.verify(token, secretToken, (err, decoded)=>{
        if(err){
            return res.status(401).send({message: "Token inválido."})
        }else{
            //salva id_usuario para uso futuro.
            req.id_usuario = decoded.id_usuario;
            
            next();
        
        }
    })
}

export {createJWT, verifyJWT}