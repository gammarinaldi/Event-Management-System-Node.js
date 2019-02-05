const conn = require('../database');

module.exports = {
    getListTrxDetails: (req,res) => {
        var sql =  `SELECT 
                    trxdetails.id AS idTrxDetails,
                    products.id AS idProduct,
                    products.startDate AS startDate,
                    products.endDate AS endDate,
                    category.name AS category,
                    products.item AS item, 
                    products.price AS price,
                    trx.totalQty AS qty
                    FROM products
                    JOIN category ON category.id = products.idCategory
                    JOIN trxdetails ON trxdetails.idProduct = products.id
                    JOIN trx ON trx.id = trxdetails.idTrx
                    WHERE trxdetails.idTrx = '${req.body.idTrx}';`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
            res.send(results);
        })   
    },

    getTrxDetails: (req,res) => {
        var sql =  `SELECT 
                    trxdetails.id AS idTrxDetails,
                    products.id AS idProduct,
                    products.startDate AS startDate,
                    products.endDate AS endDate,
                    category.name AS category,
                    products.item AS item, 
                    products.price AS price,
                    trx.totalQty AS qty
                    FROM products
                    JOIN category ON category.id = products.idCategory
                    JOIN trxdetails ON trxdetails.idProduct = products.id
                    JOIN trx ON trx.id = trxdetails.idTrx
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
    }
}