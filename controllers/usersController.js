const conn = require('../database');
const Crypto = require('crypto');

module.exports = {
    getListUsers: (req,res) => {
        var sql = 'SELECT * FROM users;';
        conn.query(sql, (err, results) => {
            if(err) throw err;
            res.send(results);
        })   
    },

    addUser: (req,res) => {
        var { username, password, fullname, email, phone } = req.body;
        var sql = `SELECT username FROM users WHERE username = '${username}'`;
        conn.query(sql, (err,results) => {
            if(err) { 
                res.send({ status: 'error', message: 'Check username in add user failed.' }); //res.send masuknya ke then axios
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
                    role,
                    status: 'UNVERIFIED',
                    lastlogin: new Date()
                 }
                sql = `INSERT INTO users SET ?`;
                conn.query(sql, dataUser, (err1,result1) => {
                    if(err1) { 
                        res.send({ status: 'error', message: 'Register insert query failed.' }); //res.send masuknya ke then axios
                        res.end();
                    }
                    res.send(result1)
                });
            }
        });
    },

    editUser: (req,res) => {
        var sql = `SELECT * FROM users WHERE id = ${req.params.id};`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
    
            if(results.length > 0) {
                try {
                    var data = req.body;
                    sql = `UPDATE users SET ? WHERE id = ${req.params.id};`
                    conn.query(sql, data, (err1,results1) => {
                        if(err1) {
                            return res.status(500).json({ 
                                message: "There's an error on the server. Please contact the administrator.", 
                                error: err1.message 
                            });
                        }
                        sql = `SELECT * FROM users;`;
                        conn.query(sql, (err2,results2) => {
                            if(err2) {
                                return res.status(500).json({ 
                                    message: "There's an error on the server. Please contact the administrator.", 
                                    error: err1.message 
                                });
                            }
                            res.send(results2);
                        })
                    })
                }
                catch(err){
                    return res.status(500).json({ 
                        message: "There's an error on the server. Please contact the administrator.", 
                        error: err.message 
                    });
                }
            }
        })
    },

    deleteUser: (req,res) => {
        var sql = `SELECT * FROM users WHERE id = ${req.params.id};`;
        conn.query(sql, (err, results) => {
            if(err) {
                return res.status(500).json({ 
                    message: "There's an error on the server. Please contact the administrator.", 
                    error: err.message });
            }
            
            if(results.length > 0) {
                sql = `DELETE FROM users WHERE id = ${req.params.id};`
                conn.query(sql, (err1,results1) => {
                    if(err1) {
                        return res.status(500).json({ 
                            message: "There's an error on the server. Please contact the administrator.", 
                            error: err1.message });
                    }
    
                    sql = `SELECT * FROM users;`;
                    conn.query(sql, (err2,results2) => {
                        if(err2) {
                            return res.status(500).json({ 
                                message: "There's an error on the server. Please contact the administrator.", 
                                error: err2.message });
                        }
    
                        res.send(results2);
                    })
                })
            }
        })   
    
    }
}