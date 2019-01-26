const conn = require('../database');
const Crypto = require('crypto');
const transporter = require('../helpers/nodemailer');

module.exports = {
    login: (req,res) => {
        var { username, password } = req.body;
        var hashPassword = Crypto.createHmac("sha256","password").update(password).digest("hex");
        var sql = `SELECT * FROM users WHERE username = '${username}' AND password = '${hashPassword}'`;
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
                    status: 'UNVERIFIED',
                    lastlogin: new Date()
                 }
                sql = `INSERT INTO users SET ?`;
                conn.query(sql, dataUser, (err1,result1) => {
                    if(err1) { 
                        res.send({ status: 'error', message: 'System error' }); //res.send masuknya ke then axios
                        res.end();
                    }
                    res.send({ username, fullname, email, phone, role: 'MEMBER', status: 'UNVERIFIED' })

                    var verificationLink = `http://localhost:3000/verify?username=${username}&password=${hashPassword}`;
                    var mailOptions = {
                        from: 'no-reply <gammarinaldi@yahoo.com>',
                        to: email,
                        subject: 'Purwadhika Store Email Verification',
                        html: `Please click this link to verifiy your account: <a href='${verificationLink}'>Click me to verify</a>`
                    }

                    transporter.sendMail(mailOptions, (err,res1) => {
                        if(err) {
                            res.send({ status: 'Error' });
                        } else {
                            res.send({ status: 'Success' });
                        }
                    });

                });
            }
        });  
    },
    verified: (req,res) => {
        var { username, password } = req.body;
        var sql = `SELECT * FROM users WHERE username='${username}' AND password='${password}'`;
        conn.query(sql, (err,results) => {
            if(err) throw err;
            if(results.length > 0) {
                sql = `UPDATE users SET status='Verified' WHERE id=${results[0].id}`;
                conn.query(sql, (err1,results1) => {
                    if(err1) throw err1;
                    //const token = createJWTToken({ id: results[0].id });
                    res.send({ 
                        username, 
                        email: results[0].email,
                        role: results[0].role,
                        status: 'Verified',
                        //token
                    });
                });
            } else {
                throw 'User does not exist.';
            }
        });
    }
}