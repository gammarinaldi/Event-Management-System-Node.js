const conn = require('../database');

module.exports = {
    getListUsers: (req,res) => {
        var sql = 'SELECT * FROM users;';
        conn.query(sql, (err, results) => {
            if(err) throw err;
            res.send(results);
        })   
    },

    addUser: (req,res) => {
        try {
            var sql = 'INSERT INTO users SET ?';
            conn.query(sql, data, (err, results) => {
                if(err) {
                    return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err.message });
                }
                
                sql = 'SELECT * from users;';
                conn.query(sql, (err, results) => {
                    if(err) {
                        return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err.message });
                    }
                    
                    res.send(results);
                })   
            })  
        } catch(err) {
            return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err.message });
        }
    },

    editUser: (req,res) => {
        var UserId = req.params.id;
        var sql = `SELECT * FROM users WHERE id = ${UserId};`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
    
            if(results.length > 0) {
                try {
                    sql = `UPDATE users SET ? WHERE id = ${UserId};`
                    conn.query(sql,data, (err1,results1) => {
                        if(err1) {
                            return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err1.message });
                        }
                        sql = `SELECT * FROM users;`;
                        conn.query(sql, (err2,results2) => {
                            if(err2) {
                                return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err1.message });
                            }
                            res.send(results2);
                        })
                    })
                }
                catch(err){
                    return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err.message });
                }
            }
        })
    },

    deleteUser: (req,res) => {
        var UserId = req.params.id;
        var sql = `SELECT * FROM users WHERE id = ${UserId};`;
        conn.query(sql, (err, results) => {
            if(err) {
                return res.status(500).json({ 
                    message: "There's an error on the server. Please contact the administrator.", 
                    error: err.message });
            }
            
            if(results.length > 0) {
                sql = `DELETE FROM users WHERE id = ${UserId};`
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