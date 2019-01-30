const conn = require('../database');

module.exports = {
    getListCategory: (req,res) => {
        var sql = 'SELECT * FROM category;';
        conn.query(sql, (err, results) => {
            if(err) throw err;
            res.send(results);
        })   
    },

    getCategory: (req,res) => {
        var sql = `SELECT * FROM category WHERE id = '${req.body.id}'`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
            res.send(results);
        })   
    },

    addCategory: (req,res) => {
        try {
            var data = req.body;
            var sql = 'INSERT INTO category SET ?';
            conn.query(sql, data, (err, results) => {
                if(err) {
                    return res.status(500).json({ 
                        message: "There's an error on the server. Please contact the administrator.", 
                        error: err.message });
                }
                
                sql = 'SELECT * from category;';
                conn.query(sql, (err, results) => {
                    if(err) {
                        return res.status(500).json({ 
                            message: "There's an error on the server. Please contact the administrator.", 
                            error: err.message });
                    }
                    
                    res.send(results);
                })   
            })  
        } catch(err) {
            return res.status(500).json({ 
                message: "There's an error on the server. Please contact the administrator.", 
                error: err.message });
        }
    },

    editCategory: (req,res) => {
        var sql = `SELECT * FROM category WHERE id = '${req.params.id}';`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
    
            if(results.length > 0) {
                try {
                    var data = req.body;
                    sql = `UPDATE category SET ? WHERE id = '${req.params.id}';`
                    conn.query(sql, data, (err1,results1) => {
                        if(err1) {
                            return res.status(500).json({ 
                                message: "There's an error on the server. Please contact the administrator.", 
                                error: err1.message });
                        }
                        sql = `SELECT * FROM category;`;
                        conn.query(sql, (err2,results2) => {
                            if(err2) {
                                return res.status(500).json({ 
                                    message: "There's an error on the server. Please contact the administrator.", 
                                    error: err1.message });
                            }
                            res.send(results2);
                        })
                    })
                }
                catch(err){
                    return res.status(500).json({ 
                        message: "There's an error on the server. Please contact the administrator.", 
                        error: err.message });
                }
            }
        })
    },

    deleteCategory: (req,res) => {
        var sql = `SELECT * FROM category WHERE id = '${req.params.id}';`;
        conn.query(sql, (err, results) => {
            if(err) {
                return res.status(500).json({ 
                    message: "There's an error on the server. Please contact the administrator.", 
                    error: err.message });
            }
            
            if(results.length > 0) {
                sql = `DELETE FROM category WHERE id = '${req.params.id}';`
                conn.query(sql, (err1,results1) => {
                    if(err1) {
                        return res.status(500).json({ 
                            message: "There's an error on the server. Please contact the administrator.", 
                            error: err1.message });
                    }
    
                    sql = `SELECT * FROM category;`;
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