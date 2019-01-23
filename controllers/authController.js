const conn = require('../database');

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
                res.send({ status: 'error', message: 'System error' }); //res.send masuknya ke then axios
                res.end();
            }

            if(results.length > 0) res.send({ status: 'error', message: 'Username has been taken.' }); //res.send masuknya ke then axios
            else { 
                //var hashPassword = Crypto.createHmac("sha256","password").update(password).digest("hex");
                var dataUser = { 
                    username,
                    //password: hashPassword,
                    password,
                    fullname,
                    email,
                    phone,
                    role: 'MEMBER',
                    status: 'UNVERIFIED',
                    lastlogin: new Date()
                 }
                sql = `INSERT INTO users SET ?`;
                conn.query(sql,dataUser, (err1,result1) => {
                    if(err1) { 
                        res.send({ status: 'error', message: 'System error' }); //res.send masuknya ke then axios
                        res.end();
                    }
                    var verificationLink = 'abcd';
                    var mailOptions = {
                        from: 'no-reply <gammarinaldi@yahoo.com>',
                        to: email,
                        subject: 'Purwadhika Store Email Verification',
                        html: `Please click this link to verifiy your account: ${verificationLink}`
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
    }
}