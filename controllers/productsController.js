const conn = require('../database');

module.exports = {
    getListProducts: (req,res) => {
        var sql = 'SELECT * FROM products;';
        conn.query(sql, (err, results) => {
            if(err) throw err;
            res.send(results);
        })   
    },

    getProduct: (req,res) => {
        var productId = req.body.id;
        var creator = req.body.creator;
        var createdBy = req.body.createdBy;
        if(productId) {
            var sql = `SELECT * FROM products WHERE id = '${productId}'`;
        } else {
            var sql = `SELECT * FROM products WHERE creator = '${creator}' AND createdBy = '${createdBy}'`;
        }
        conn.query(sql, (err, results) => {
            if(err) throw err;
            res.send(results);
        })   
    },

    addProduct: (req,res) => {
        try {
            var data = req.body;
            var sql = 'INSERT INTO products SET ?';
            conn.query(sql, data, (err, results) => {
                if(err) {
                    return res.status(500).json({ 
                        message: "There's an error on the server. Please contact the administrator.", 
                        error: err.message });
                }
                
                sql = 'SELECT * from products;';
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

    editProduct: (req,res) => {
        var sql = `SELECT * FROM products WHERE id = '${req.params.id}'`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
    
            if(results.length > 0) {
                var data = req.body;
                try {
                    sql = `UPDATE products SET ? WHERE id = '${req.params.id}'`;
                    conn.query(sql, data, (err1,results1) => {
                        if(err1) {
                            return res.status(500).json({ 
                                message: "There's an error on the server. Please contact the administrator.", 
                                error: err1.message });
                        }
                        sql = `SELECT * FROM products`;
                        conn.query(sql, (err2,results2) => {
                            if(err2) {
                                return res.status(500).json({ 
                                    message: "There's an error on the server. Please contact the administrator.", 
                                    error: err1.message });
                            }
                            res.send(results2);
                        });
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

    deleteProduct: (req,res) => {
        var sql = `SELECT * FROM products WHERE id = '${req.params.id}';`;
        conn.query(sql, (err, results) => {
            if(err) {
                return res.status(500).json({ 
                    message: "There's an error on the server. Please contact the administrator.", 
                    error: err.message });
            }
            
            if(results.length > 0) {
                sql = `DELETE FROM products WHERE id = '${req.params.id}';`;
                conn.query(sql, (err1,results1) => {
                    if(err1) {
                        return res.status(500).json({ 
                            message: "There's an error on the server. Please contact the administrator.", 
                            error: err1.message });
                    }

                    sql = `SELECT * FROM wishlist WHERE id = '${req.params.id}'`;
                    conn.query(sql, (err,results) => {
                        if(err) {
                            return res.status(500).json({ 
                                message: "There's an error on the server. Please contact the administrator.", 
                                error: err.message });
                        }
                        
                        if(results > 0) {
                            sql = `DELETE FROM wishlist WHERE idProduct = '${req.params.id}';`;
                            conn.query(sql, (err,results) => {
                                if(err) {
                                    return res.status(500).json({ 
                                        message: "There's an error on the server. Please contact the administrator.", 
                                        error: err.message });
                                }
                            });
                        }
                        
                        sql = `SELECT * FROM products;`;
                        conn.query(sql, (err3,results3) => {
                            if(err3) {
                                return res.status(500).json({ 
                                    message: "There's an error on the server. Please contact the administrator.", 
                                    error: err3.message });
                            }
        
                            res.send(results3);
                        });
                    });
                });
            }
        }); 
    
    }
}