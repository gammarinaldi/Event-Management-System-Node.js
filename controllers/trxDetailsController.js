const conn = require('../database');
const transporter = require('../helpers/nodemailer');

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
        var code = req.body.invoice.slice(-5);
        var sql = `UPDATE trxdetails SET barcode = '${code}' WHERE idTrx = '${req.params.id}'`;
        conn.query(sql, (err, results) => {
            if(err) {
                return res.status(500).json({ 
                    message: "There's an error on the server. Please contact the administrator.", 
                    error: err.message 
                });
            }
            res.send(results);

            var sql = ` SELECT 
                        products.startDate AS startDate,
                        products.endDate AS endDate,
                        products.startTime AS startTime,
                        products.endTime AS endTime,
                        products.item AS item
                        FROM products
                        JOIN category ON category.id = products.idCategory
                        JOIN trxdetails ON trxdetails.idProduct = products.id
                        JOIN trx ON trx.id = trxdetails.idTrx
                        JOIN location ON location.id = products.idLocation
                        WHERE trxdetails.idTrx = '${req.params.id}'; `;
            conn.query(sql, (err,res) => {
                if(err) {
                    return res.status(500).json({ 
                        message: "There's an error on the server. Please contact the administrator.", 
                        error: err.message 
                    });
                }
                //Send confirmation email
                var mailOptions = {
                    from: 'no-reply <gammarinaldi@yahoo.com>',
                    to: req.body.email,
                    subject: 'EMS - Purchase Confirmation',
                    html:  `Dear Member,
                            <br/><br/>
                            Your purchase with invoice: <strong>${req.body.invoice}</strong> has been confirmed.
                            <br/><br/>
                            Check-In Code: <strong>${code}</strong><br/>
                            You can get the Barcode of Check-In Code in the History menu. 
                            <br/><br/><br/>
                            Thank You.`
                }

                transporter.sendMail(mailOptions, (err,res) => {
                    if(err) {
                        res.send({ status: 'Error' });
                    } else {
                        res.send({ status: 'Success' });
                    }
                });
            })
        });
        
    }
}