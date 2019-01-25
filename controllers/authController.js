const conn = require('../database');
const Crypto = require('crypto');

module.exports = {
    login: (req,res) => {
        var { username, password } = req.query;
        var sql = `SELECT * FROM users WHERE username = '${username}' AND password = '${password}'`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
            res.send(results);
        })   
    },

    register: (req,res) => {
        var { username, password, fullname, email, phone } = req.body;
        var sql = `SELECT username FROM users WHERE username = '${username}'`;
        conn.query(sql, (err,results) => {
            if(err) { 
                res.send({ status: 'error', message: 'Query error.' }); //res.send masuknya ke then axios
                res.end();
            }
            
            if(results.length > 0) {
                res.send({ status: 'error', message: 'Username has been taken.' }); //res.send masuknya ke then axios
            }
            else { 
                var hashPassword = Crypto.createHmac("sha256","password").update(password).digest("hex");
                var dataUser = { 
                    username,
                    password: hashPassword,
                    fullname,
                    email,
                    phone,
                    img: null,
                    role: 'MEMBER',
                    status: 'UNVERIFIED'
                 }
                sql = `INSERT INTO users SET ?`;
                conn.query(sql, dataUser, (err1,result1) => {
                    if(err1) { 
                        res.send({ status: 'error', message: 'System error' }); //res.send masuknya ke then axios
                        res.end();
                    }
                    res.send({ username, fullname, email, phone, role: 'MEMBER', status: 'UNVERIFIED' })

                    // var verificationLink = 'abcd';
                    // var mailOptions = {
                    //     from: 'no-reply <gammarinaldi@yahoo.com>',
                    //     to: email,
                    //     subject: 'Purwadhika Store Email Verification',
                    //     html: `Please click this link to verifiy your account: ${verificationLink}`
                    // }

                    // transporter.sendMail(mailOptions, (err,res1) => {
                    //     if(err) {
                    //         res.send({ status: 'Error' });
                    //     } else {
                    //         res.send({ status: 'Success' });
                    //     }
                    // });

                });
            }
        });  
    }
}