const conn = require('../database');

module.exports = {
    showMatches: (req,res) => {
        var sql = `SELECT * FROM matches;`;
        conn.query(sql, (err, results) => {
            if(err) {
                return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err.message });
            }
            res.send(results);
        });   
    },

    addMatch: (req,res) => {
        var sql = ` SELECT * FROM matches 
                    WHERE (productID = ${req.body.productID} AND userID_1 = ${req.body.userID_1} AND userID_2 = ${req.body.userID_2})
                    OR (productID = ${req.body.productID} AND userID_1 = ${req.body.userID_2} AND userID_2 = ${req.body.userID_1});`;
        conn.query(sql, (err, results) => {
            if(err) {
                return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err.message });
            }
            if(results.length === 0) {
                try {
                    var data = req.body;
                    var sql = `INSERT INTO matches SET ?`;
                    conn.query(sql, data, (err, results) => {
                        if(err) {
                            return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err.message });
                        }
                        var sql = 'SELECT * FROM matches;';
                        conn.query(sql, (err, results) => {
                            if(err) {
                                return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err.message });
                            }
                            res.send(results);
                        });
                    })  
                } catch(err) {
                    return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err.message });
                }
            } else {
                var sql = `SELECT * FROM matches;`;
                conn.query(sql, data, (err, results) => {
                    if(err) {
                        return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err.message });
                    }
                    res.send(results);
                });
            }
        });
    }
}