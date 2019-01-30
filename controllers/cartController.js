const conn = require('../database');

module.exports = {
    getListCart: (req,res) => {
        var sql = `SELECT * FROM cart WHERE username = '${req.body.username}'`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
            res.send(results);
            console.log(results)
        });   
    },

    addCart: (req,res) => {
        try {
            var data = req.body;
            var sql = 'INSERT INTO cart SET ?';
            conn.query(sql, data, (err, results) => {
                if(err) {
                    return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err.message });
                }
                
                sql = 'SELECT * from cart;';
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

    editCart: (req,res) => {
        var sql = `SELECT * FROM cart WHERE id = ${req.params.id};`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
    
            if(results.length > 0) {
                try {
                    var data = req.body;
                    sql = `UPDATE cart SET ? WHERE id = ${req.params.id};`
                    conn.query(sql, data, (err1,results1) => {
                        if(err1) {
                            return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err1.message });
                        }
                        sql = `SELECT * FROM cart;`;
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

    deleteCart: (req,res) => {
        var sql = `SELECT * FROM cart WHERE id = ${req.params.id};`;
        conn.query(sql, (err, results) => {
            if(err) {
                return res.status(500).json({ 
                    message: "There's an error on the server. Please contact the administrator.", 
                    error: err.message });
            }
            
            if(results.length > 0) {
                sql = `DELETE FROM cart WHERE id = ${req.params.id};`
                conn.query(sql, (err1,results1) => {
                    if(err1) {
                        return res.status(500).json({ 
                            message: "There's an error on the server. Please contact the administrator.", 
                            error: err1.message });
                    }
    
                    sql = `SELECT * FROM cart;`;
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