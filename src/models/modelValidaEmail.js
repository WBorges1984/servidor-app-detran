import nodemailer from 'nodemailer'; // Corrigido para import padrão

const emailRemetente = 'willianodhara@gmail.com';
const senhaEmailRemetente = 'worq sdyj iqhw mztl';

const generateRandomNumbers = () => {
  const getRandomNumber = (min, max) => {
    return Math.floor(Math.random() * (max - min + 1)) + min;
  };

  const number1 = getRandomNumber(10, 99); 
  const number2 = getRandomNumber(10, 99); 
  const number3 = getRandomNumber(10, 99);

  return `${number1}-${number2}-${number3}`;
};

function ValidaEmail(email, callback) {
  // Gera o número aleatório
  const num = generateRandomNumbers();

  // Configuração do transportador (usando variáveis de ambiente para segurança)
  let transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
      user: emailRemetente, 
      pass: senhaEmailRemetente,
    },
  });

  // Configuração das opções de envio de email
  const mailOptions = {
    from: `"App Simulado RJ" <${emailRemetente}>`, // email do remetente (deve ser o mesmo do auth)
    to: email, // destinatário
    subject: 'Validação do Email - App Simulado Detran', // Assunto
    html: `<p>Seu código é: <strong>${num}</strong></p>`, // Corpo do email com o código
  };

  // Envia o email e trata o retorno
  transporter.sendMail(mailOptions, (err, info) => {
    if (err) {
      return callback(err, null); // Retorna o erro, se ocorrer
    } else {
      return callback(null, { info, code: num }); // Retorna as informações e o número gerado
    }
  });
}

export default { ValidaEmail };