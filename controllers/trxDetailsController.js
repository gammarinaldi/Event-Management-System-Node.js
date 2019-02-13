const conn = require('../database');
const transporter = require('../helpers/nodemailer');
//const JsBarcode = require('jsbarcode');
const qr = require('qr-image');


module.exports = {
    totalTrx: (req,res) => {
        var sql =  `SELECT SUM(qty) AS qty FROM trxdetails ORDER BY id;`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
            res.send(results);
        })   
    },

    getListTrxDetails: (req,res) => {
        var sql =  `SELECT 
                    trxdetails.id AS idTrxDetails,
                    trxdetails.barcode AS barcode,
                    products.id AS idProduct,
                    products.startDate AS startDate,
                    products.endDate AS endDate,
                    products.startTime AS startTime,
                    products.endTime AS endTime,
                    category.name AS category,
                    products.item AS item, 
                    products.price AS price,
                    trxdetails.qty AS qty,
                    location.city AS city,
                    location.address AS address
                    FROM products
                    JOIN category ON category.id = products.idCategory
                    JOIN trxdetails ON trxdetails.idProduct = products.id
                    JOIN trx ON trx.id = trxdetails.idTrx
                    JOIN location ON location.id = products.idLocation
                    WHERE trxdetails.idTrx = '${req.body.idTrx}';`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
            res.send(results);
        })   
    },

    getTrxDetails: (req,res) => {
        var sql =  `SELECT 
                    trxdetails.id AS idTrxDetails,
                    trxdetails.barcode AS barcode,
                    products.id AS idProduct,
                    products.startDate AS startDate,
                    products.endDate AS endDate,
                    products.startTime AS startTime,
                    products.endTime AS endTime,
                    category.name AS category,
                    products.item AS item, 
                    products.price AS price,
                    trxdetails.qty AS qty,
                    location.city AS city,
                    location.address AS address
                    FROM products
                    JOIN category ON category.id = products.idCategory
                    JOIN trxdetails ON trxdetails.idProduct = products.id
                    JOIN trx ON trx.id = trxdetails.idTrx
                    JOIN location ON location.id = products.idLocation
                    WHERE trxdetails.idTrx = '${req.body.idTrx}';`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
            res.send(results);
        })   
    },

    addTrxDetail: (req,res) => {
        try {
            var data = req.body;
            var sql = 'INSERT INTO trxdetails SET ?';
            conn.query(sql, data, (err, results) => {
                if(err) {
                    return res.status(500).json({ 
                        message: "There's an error on the server. Please contact the administrator.", 
                        error: err.message 
                    });
                }
                res.send(results); 
            })  
        } catch(err) {
            return res.status(500).json({ 
                message: "There's an error on the server. Please contact the administrator.", 
                error: err.message 
            });
        }
    },

    bestSeller: (req,res) => {
        try {
            var sql =  `SELECT products.item AS item
                        FROM products
                        JOIN trxdetails ON trxdetails.idProduct = products.id
                        GROUP BY products.id
                        ORDER BY SUM(trxdetails.qty) DESC LIMIT 1;`;
            conn.query(sql, (err, results) => {
                if(err) {
                    return res.status(500).json({ 
                        message: "There's an error on the server. Please contact the administrator.", 
                        error: err.message 
                    });
                }
                res.send(results); 
            })  
        } catch(err) {
            return res.status(500).json({ 
                message: "There's an error on the server. Please contact the administrator.", 
                error: err.message 
            });
        }
    },

    worstSeller: (req,res) => {
        try {
            var sql =  `SELECT products.item AS item
                        FROM products
                        JOIN trxdetails ON trxdetails.idProduct = products.id
                        GROUP BY products.id
                        ORDER BY SUM(trxdetails.qty) ASC LIMIT 1;`;
            conn.query(sql, (err, results) => {
                if(err) {
                    return res.status(500).json({ 
                        message: "There's an error on the server. Please contact the administrator.", 
                        error: err.message 
                    });
                }
                res.send(results); 
            })  
        } catch(err) {
            return res.status(500).json({ 
                message: "There's an error on the server. Please contact the administrator.", 
                error: err.message 
            });
        }
    },

    barcode: (req,res) => {
        var sql = `UPDATE trxdetails SET barcode = '${req.body.invoice}' WHERE idTrx = '${req.params.id}'`;
        conn.query(sql, (err, results) => {
            if(err) {
                return res.status(500).json({ 
                    message: "There's an error on the server. Please contact the administrator.", 
                    error: err.message 
                });
            }
            res.send(results);
            
            // var code = qr.image(req.body.invoice, { type: 'png' });
            // res.setHeader('Content-type', 'image/png');  //sent qr image to client side
            // code.pipe(res);

            //Send confirmation email
            var mailOptions = {
                from: 'no-reply <gammarinaldi@yahoo.com>',
                to: req.body.email,
                subject: 'Yeay, your purchase has been confirmed!',
                html:  `Dear ${req.body.fullname},
                        <br/><br/>
                        Your purchase with invoice: ${req.body.invoice} has been confirmed.
                        <br/><br/><br/>
                        Thank You.`
            }

            transporter.sendMail(mailOptions, (err,res1) => {
                if(err) {
                    res.send({ status: 'Error' });
                } else {
                    res.send({ status: 'Success' });
                }
            });
        });
        
    }
}