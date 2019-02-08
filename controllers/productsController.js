const conn = require('../database');
var fs = require('fs');
var { uploader } = require('../helpers/uploader');

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

            const path = '/img/products'; //file save path
            const upload = uploader(path, 'PRD').fields([{ name: 'img'}]); //uploader(path, 'default prefix')
    
            upload(req, res, (err) => {
                if(err){
                    return res.status(500).json({ message: 'Upload picture failed !', error: err.message });
                }
    
                const { img } = req.files;
                const imagePath = img ? path + '/' + img[0].filename : null;
    
                const data = JSON.parse(req.body.data);
                data.img = imagePath;
                
                var sql = 'INSERT INTO products SET ?';
                conn.query(sql, data, (err, results) => {
                    if(err) {
                        fs.unlinkSync('./public' + imagePath);
                        return res.status(500).json({ 
                            message: "There's an error on the server. Please contact the administrator.", 
                            error: err.message 
                        });
                    }
                   
                    sql = 'SELECT * FROM products ORDER BY id DESC LIMIT 1';
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
            })
        } catch(err) {
            return res.status(500).json({ 
                message: "There's an error on the server. Please contact the administrator.", 
                error: err.message 
            });
        }
    },

    editProduct: (req,res) => {
        const path = '/img/products'; //file save path
        const upload = uploader(path, 'PRD').fields([{ name: 'img'}]); //uploader(path, 'default prefix')

        upload(req, res, (err) => {
            if(err){
                return res.status(500).json({ message: 'Upload picture failed !', error: err.message });
            }

            const { img } = req.files;
            const imagePath = img ? path + '/' + img[0].filename : null;

            const data = JSON.parse(req.body.data);

            try {
                if(imagePath) {
                    data.img = imagePath;
                    var sql = `UPDATE products SET ? WHERE id = '${req.params.id}'`;
                    conn.query(sql, data, (err, results) => {
                        if(err) {
                            fs.unlinkSync('./public' + imagePath);
                            return res.status(500).json({ 
                                message: "There's an error on the server. Please contact the administrator.", 
                                error: err.message 
                            });
                        }
                        //fs.unlinkSync('./public' + results[0].img);
                        sql = 'SELECT * FROM products ORDER BY id DESC LIMIT 1';
                        conn.query(sql, (err, results) => {
                            if(err) {
                                return res.status(500).json({ 
                                    message: "There's an error on the server. Please contact the administrator.", 
                                    error: err.message 
                                });
                            }
                            res.send(results);
                        });   
                    });  
                } else {
                    var sql = `UPDATE products SET ? WHERE id = '${req.params.id}'`;
                    conn.query(sql, data, (err, results) => {
                        if(err) {
                            return res.status(500).json({ 
                                message: "There's an error on the server. Please contact the administrator.", 
                                error: err.message 
                            });
                        }
                        
                        sql = 'SELECT * FROM products ORDER BY id DESC LIMIT 1';
                        conn.query(sql, (err, results) => {
                            if(err) {
                                return res.status(500).json({ 
                                    message: "There's an error on the server. Please contact the administrator.", 
                                    error: err.message 
                                });
                            }
                            res.send(results);
                        });   
                    });
                }
            } catch {
                return res.status(500).json({ 
                    message: "There's an error on the server. Please contact the administrator.", 
                    error: err.message 
                });
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