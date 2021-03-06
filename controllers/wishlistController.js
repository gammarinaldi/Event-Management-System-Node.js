const conn = require('../database');

module.exports = {
    getListWishlist: (req,res) => {
        var sql =  `SELECT 
                    wishlist.id AS idWishlist,
                    products.id AS idProduct,
                    products.item AS item, 
                    products.price AS price, 
                    products.img AS img,
                    category.name AS categoryName
                    FROM products
                    JOIN wishlist ON wishlist.idProduct = products.id
                    JOIN category ON wishlist.idCategory = category.id
                    WHERE wishlist.username = '${req.body.username}'`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
            res.send(results);
        })   
    },

    getWishlist: (req,res) => {
        var sql =  `SELECT id FROM wishlist WHERE idProduct = '${req.body.idProduct}'`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
            res.send(results);
        })   
    },

    addWishlist: (req,res) => {
        try {
            var data = req.body;
            var sql = 'INSERT INTO wishlist SET ?';
            conn.query(sql, data, (err, results) => {
                if(err) {
                    return res.status(500).json({ 
                        message: "There's an error on the server. Please contact the administrator.", 
                        error: err.message 
                    });
                }
                
                sql = 'SELECT * FROM wishlist;';
                conn.query(sql, (err, results) => {
                    if(err) {
                        return res.status(500).json({ 
                            message: "There's an error on the server. Please contact the administrator.", 
                            error: err.message 
                        });
                    }
                    
                    res.send(results);
                })   
            })  
        } catch(err) {
            return res.status(500).json({ 
                message: "There's an error on the server. Please contact the administrator.", 
                error: err.message 
            });
        }
    },

    editWishlist: (req,res) => {
        var sql = `SELECT * FROM wishlist WHERE id = '${req.params.id}';`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
    
            if(results.length > 0) {
                try {
                    var data = req.body;
                    sql = `UPDATE wishlist SET ? WHERE id = '${req.params.id}';`
                    conn.query(sql, data, (err1,results1) => {
                        if(err1) {
                            return res.status(500).json({ 
                                message: "There's an error on the server. Please contact the administrator.", 
                                error: err1.message 
                            });
                        }
                        sql = `SELECT * FROM wishlist;`;
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

    deleteWishlist: (req,res) => {
        var sql = `SELECT * FROM wishlist WHERE id = '${req.params.id}';`;
        conn.query(sql, (err, results) => {
            if(err) {
                return res.status(500).json({ 
                    message: "There's an error on the server. Please contact the administrator.", 
                    error: err.message });
            }
            
            if(results.length > 0) {
                sql = `DELETE FROM wishlist WHERE id = '${req.params.id}';`
                conn.query(sql, (err1,results1) => {
                    if(err1) {
                        return res.status(500).json({ 
                            message: "There's an error on the server. Please contact the administrator.", 
                            error: err1.message });
                    }
    
                    sql = `SELECT * FROM wishlist;`;
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