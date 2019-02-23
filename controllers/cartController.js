const conn = require('../database');

module.exports = {
    getListCart: (req,res) => {
        var sql =  `SELECT 
                    cart.id AS idCart,
                    products.id AS idProduct,
                    products.item AS item, 
                    products.price AS price, 
                    products.img AS img,
                    category.name AS categoryName,
                    cart.qty AS qty
                    FROM products
                    JOIN cart ON cart.idProduct = products.id
                    JOIN category ON cart.idCategory = category.id
                    WHERE cart.username = '${req.body.username}'`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
            res.send(results);
        });   
    },

    cartCount: (req,res) => {
        var sql = `SELECT SUM(qty) AS totalQty FROM cart WHERE username='${req.body.username}';`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
            console.log(sql);
            console.log(results[0].totalQty)
            res.send(results[0]);
        })
    },

    addCart: (req,res) => {
        try {
            var data = req.body;

            var sql = `SELECT * FROM cart WHERE idProduct = '${data.idProduct}'`;
            conn.query(sql, (err,results) => {
                if(err) {
                    return res.status(500).json({ 
                        message: "There's an error on the server. Please contact the administrator.", 
                        error: err.message 
                    });
                }
                if(results.length > 0) {
                    var qty = results[0].qty + data.qty;
                    var sql = `UPDATE cart SET qty = '${qty}' WHERE idProduct = '${data.idProduct}'`
                    conn.query(sql, (err,results) => {
                        if(err) {
                            return res.status(500).json({ 
                                message: "There's an error on the server. Please contact the administrator.", 
                                error: err.message 
                            });
                        }
                        res.send(results);
                    })
                } else {
                    var sql = 'INSERT INTO cart SET ?';
                    conn.query(sql, data, (err, results) => {
                        if(err) {
                            return res.status(500).json({ 
                                message: "There's an error on the server. Please contact the administrator.", 
                                error: err.message 
                            });
                        }
                        res.send(results); 
                    })
                }
            })  
        } catch(err) {
            return res.status(500).json({ 
                message: "There's an error on the server. Please contact the administrator.", 
                error: err.message 
            });
        }
    },

    editCart: (req,res) => {
        var sql = `SELECT * FROM cart WHERE id = '${req.params.id}';`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
    
            if(results.length > 0) {
                try {
                    var data = req.body;
                    sql = `UPDATE cart SET ? WHERE id = '${req.params.id}';`
                    conn.query(sql, data, (err1,results1) => {
                        if(err1) {
                            return res.status(500).json({ 
                                message: "There's an error on the server. Please contact the administrator.", 
                                error: err1.message 
                            });
                        }
                        res.send(results1);
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

    deleteCart: (req,res) => {
        var sql = `SELECT * FROM cart WHERE id = '${req.params.id}';`;
        conn.query(sql, (err, results) => {
            if(err) {
                return res.status(500).json({ 
                    message: "There's an error on the server. Please contact the administrator.", 
                    error: err.message });
            }
            
            if(results.length > 0) {
                sql = `DELETE FROM cart WHERE id = '${req.params.id}';`
                conn.query(sql, (err1,results1) => {
                    if(err1) {
                        return res.status(500).json({ 
                            message: "There's an error on the server. Please contact the administrator.", 
                            error: err1.message });
                    }
                    res.send(results1);
                })
            }
        })   
    
    },

    leftInCart: (req,res) => {
        var sql =  `SELECT SUM(qty) AS qty FROM cart ORDER BY id;`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
            res.send(results);
        });   
    },
}