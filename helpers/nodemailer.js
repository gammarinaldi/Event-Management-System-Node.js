const nodemailer = require('nodemailer');

var transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
        user: 'gammarinaldi@gmail.com',
        pass: 'suojeshdbnbnkvwl'
    },
    tls: {
        rejectUnauthorized: false
    }
})

module.exports = transporter;
