const conn = require('../database');
var fs = require('fs');
var { uploader } = require('../helpers/uploader');

module.exports = {
    getListTrx: (req,res) => {
        var sql = `SELECT * FROM trx`;
        conn.query(sql, (err, results) => {
            if(err){
                return res.status(500).json({ message: 'Upload picture failed !', error: err.message });
            }
            res.send(results);
        })   
    },

    getTrx: (req,res) => {
        var username = req.body;
        var sql = `SELECT * FROM trx WHERE username = '${username}'`;
        conn.query(sql, (err, results) => {
            if(err){
                return res.status(500).json({ message: 'Upload picture failed !', error: err.message });
            }
            res.send(results);
        })   
    },

    addTrx: (req,res) => {
        try {

            const path = '/trx/receipt'; //file save path
            const upload = uploader(path, 'TRX').fields([{ name: 'receipt'}]); //uploader(path, 'default prefix')
    
            upload(req, res, (err) => {
                if(err){
                    return res.status(500).json({ message: 'Upload picture failed !', error: err.message });
                }
    
                const { receipt } = req.files;
                const imagePath = receipt ? path + '/' + receipt[0].filename : null;
    
                const data = JSON.parse(req.body.data);
                data.receipt = imagePath;
                
                var sql = 'INSERT INTO trx SET ?';
                conn.query(sql, data, (err, results) => {
                    if(err) {
                        fs.unlinkSync('./public' + imagePath);
                        return res.status(500).json({ 
                            message: "There's an error on the server. Please contact the administrator.", 
                            error: err.message 
                        });
                    }
                   
                    sql = 'SELECT * FROM trx ORDER BY id DESC LIMIT 1';
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
    }
}