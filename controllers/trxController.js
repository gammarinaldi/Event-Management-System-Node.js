const conn = require('../database');
var fs = require('fs');
var { uploader } = require('../helpers/uploader');

module.exports = {
    getListTrx: (req,res) => {
        var sql = 'SELECT * FROM trx;';
        conn.query(sql, (err, results) => {
            if(err) throw err;
            res.send(results);
        })   
    },

    addTrx: (req,res) => {
        try {
            const path = '/trx/images'; //file save path
            const upload = uploader(path, 'PRD').fields([{ name: 'image'}]); //uploader(path, 'default prefix')
    
            upload(req, res, (err) => {
                if(err){
                    return res.status(500).json({ message: 'Upload picture failed !', error: err.message });
                }
    
                const { image } = req.files;
                const imagePath = image ? path + '/' + image[0].filename : null;
    
                const data = JSON.parse(req.body.data);
                data.image = imagePath;
                
                var sql = 'INSERT INTO trx SET ?';
                conn.query(sql, data, (err, results) => {
                    if(err) {
                        fs.unlinkSync('./public' + imagePath);
                        return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err.message });
                    }
                   
                    sql = 'SELECT * FROM trx;';
                    conn.query(sql, (err, results) => {
                        if(err) {
                            return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err.message });
                        }
                        
                        res.send(results);
                    })   
                })    
            })
        } catch(err) {
            return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err.message });
        }
    },

    editTrx: (req,res) => {
        var TrxId = req.params.id;
        var sql = `SELECT * FROM trx WHERE id = ${TrxId};`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
    
            if(results.length > 0) {
                const path = '/trx/images'; //file save path
                const upload = uploader(path, 'PRD').fields([{ name: 'image'}]); //uploader(path, 'default prefix')
    
                upload(req, res, (err) => {
                    if(err){
                        return res.status(500).json({ message: 'Upload Trx picture failed !', error: err.message });
                    }
    
                    const { image } = req.files;
                    const imagePath = image ? path + '/' + image[0].filename : null;
                    const data = JSON.parse(req.body.data);
                    data.image = imagePath;
    
                    try {
                        if(imagePath) {
                            sql = `UPDATE trx SET ? WHERE id = ${TrxId};`
                            conn.query(sql,data, (err1,results1) => {
                                if(err1) {
                                    fs.unlinkSync('./public' + imagePath);
                                    return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err1.message });
                                }
                                fs.unlinkSync('./public' + results[0].image);
                                sql = `SELECT * FROM trx;`;
                                conn.query(sql, (err2,results2) => {
                                    if(err2) {
                                        return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err1.message });
                                    }
    
                                    res.send(results2);
                                })
                            })
                        }
                        else {
                            sql = `UPDATE trx SET nama='${data.nama}' WHERE id = ${TrxId};`
                            conn.query(sql, (err1,results1) => {
                                if(err1) {
                                    return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err1.message });
                                }
                                sql = `SELECT * FROM trx;`;
                                conn.query(sql, (err2,results2) => {
                                    if(err2) {
                                        return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err1.message });
                                    }
    
                                    res.send(results2);
                                })
                            })
                        }
                    }
                    catch(err){
                        return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err.message });
                    }
                })
            }
        })
    },

    deleteTrx: (req,res) => {
        var TrxId = req.params.id;
        var sql = `SELECT * FROM trx WHERE id = ${TrxId};`;
        conn.query(sql, (err, results) => {
            if(err) {
                return res.status(500).json({ 
                    message: "There's an error on the server. Please contact the administrator.", 
                    error: err.message });
            }
            
            if(results.length > 0) {
                sql = `DELETE FROM trx WHERE id = ${TrxId};`
                conn.query(sql, (err1,results1) => {
                    if(err1) {
                        return res.status(500).json({ 
                            message: "There's an error on the server. Please contact the administrator.", 
                            error: err1.message });
                    }
    
                    fs.unlinkSync('./public' + results[0].image);
                    sql = `SELECT * FROM trx;`;
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