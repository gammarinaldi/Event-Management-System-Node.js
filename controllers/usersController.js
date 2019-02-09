const conn = require('../database');
const Crypto = require('crypto');

module.exports = {
    getListUsers: (req,res) => {
        var sql = 'SELECT * FROM users;';
        conn.query(sql, (err, results) => {
            if(err) {
                return res.status(500).json({ 
                    message: "There's an error on the server. Please contact the administrator.", 
                    error: err.message 
                });
            }
            res.send(results);
        })   
    },

    addUser: (req,res) => {
        var { username, password, fullname, email, phone, role } = req.body;
        var sql = `SELECT username FROM users WHERE username = '${username}'`;
        conn.query(sql, (err,results) => {
            if(err) {
                return res.status(500).json({ 
                    message: "There's an error on the server. Please contact the administrator.", 
                    error: err.message 
                });
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
                    role
                }
                sql = `INSERT INTO users SET ?`;
                conn.query(sql, dataUser, (err,result) => {
                    if(err) { 
                        return res.status(500).json({ 
                            message: "There's an error on the server. Please contact the administrator.", 
                            error: err.message 
                        });
                    }
                    res.send(result);
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
                    var { username, password, fullname, email, phone, role } = req.body;
                    var hashPassword = Crypto.createHmac("sha256","password").update(password).digest("hex");
                    var dataUser = { 
                        username,
                        password: hashPassword,
                        fullname,
                        email,
                        phone,
                        role
                    }
                    sql = `UPDATE users SET ? WHERE id = ${req.params.id};`
                    conn.query(sql, dataUser, (err1,results1) => {
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
                                    error: err2.message 
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