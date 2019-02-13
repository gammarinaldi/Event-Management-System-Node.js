const conn = require('../database');
const Crypto = require('crypto');
const transporter = require('../helpers/nodemailer');

module.exports = {
    login: (req,res) => {
        var { username, password } = req.body;
        var hashPassword = Crypto.createHmac("sha256","password").update(password).digest("hex");
        var sql = `SELECT * FROM users WHERE username = '${username}' AND password = '${hashPassword}'`;
        conn.query(sql, (err, results) => {
            if(err) { 
                res.send({ status: 'error', message: 'Login query failed.' }); //res.send masuknya ke then axios
                res.end();
            }
            res.send(results);
        })   
    },

    keepLogin: (req,res) => {
        var sql = `SELECT * FROM users WHERE username = '${req.body.username}'`;
        conn.query(sql, (err, results) => {
            if(err) { 
                res.send({ status: 'error', message: 'Keeplogin query failed.' }); //res.send masuknya ke then axios
                res.end();
            }
            res.send(results);
        })   
    },

    register: (req,res) => {
        var { username, password, fullname, email, phone } = req.body;
        var sql = `SELECT username FROM users WHERE username = '${username}'`;
        conn.query(sql, (err,results) => {
            if(err) { 
                res.send({ status: 'error', message: 'Check username in register failed.' }); //res.send masuknya ke then axios
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
                    role: 'MEMBER',
                    status: 'Unverified'
                 }
                sql = `INSERT INTO users SET ?`;
                conn.query(sql, dataUser, (err,results) => {
                    if(err) { 
                        res.send({ status: 'error', message: 'Register insert query failed.' }); //res.send masuknya ke then axios
                        res.end();
                    }

                    var sql = `SELECT * FROM users WHERE username = '${username}'`;
                    conn.query(sql, (err,results) => {
                        if(err) {
                            return res.status(500).json({ 
                                message: "There's an error on the server. Please contact the administrator.", 
                                error: err.message 
                            });
                        }
                        res.send(results[0].status);

                        //Send account verification email
                        var verificationLink = `http://localhost:3000/verified?username=${username}&password=${hashPassword}`;
                        var mailOptions = {
                            from: 'no-reply <gammarinaldi@yahoo.com>',
                            to: email,
                            subject: `Account Verification`,
                            html: 
                            `
                            Dear ${fullname},<br/><br/>
                            Please click link follow to verifiy your account: <a href='${verificationLink}'>Click me</a>`
                        }

                        transporter.sendMail(mailOptions, (err,res) => {
                            if(err) {
                                res.send({ status: 'Error' });
                            } else {
                                res.send({ status: 'Success' });
                            }
                        });

                    })
                });
            }
        });  
    },

    verified: (req,res) => {
        var { username, password } = req.body;
        var sql = `SELECT * FROM users WHERE username='${username}' AND password='${password}'`;
        conn.query(sql, (err,results) => {
            if(err) {
                return res.status(500).json({ 
                    message: "There's an error on the server. Please contact the administrator.", 
                    error: err.message 
                });
            }

            if(results.length > 0) {
                sql = `UPDATE users SET status='Verified' WHERE id=${results[0].id}`;
                conn.query(sql, (err,results) => {
                    if(err) {
                        return res.status(500).json({ 
                            message: "There's an error on the server. Please contact the administrator.", 
                            error: err.message 
                        });
                    }
                    //const token = createJWTToken({ id: results[0].id });
                    res.send({ 
                        id: results[0].id,
                        username: results[0].username, 
                        fullname: results[0].fullname,
                        phone: results[0].phone,
                        email: results[0].email,
                        role: results[0].role,
                        status: results[0].status
                        //token
                    });
                });
            } else {
                throw 'User does not exist.';
            }
        });
    }
}