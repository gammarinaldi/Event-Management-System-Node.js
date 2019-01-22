const conn = require('../database');

module.exports = {
    getListTrxDetails: (req,res) => {
        var sql = 'SELECT * FROM trxdetails;';
        conn.query(sql, (err, results) => {
            if(err) throw err;
            res.send(results);
        })   
    },

    addTrxDetail: (req,res) => {
        try {
            var sql = 'INSERT INTO trxdetails SET ?';
            conn.query(sql, data, (err, results) => {
                if(err) {
                    return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err.message });
                }
                
                sql = 'SELECT * from trxdetails;';
                conn.query(sql, (err, results) => {
                    if(err) {
                        return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err.message });
                    }
                    
                    res.send(results);
                })   
            })  
        } catch(err) {
            return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err.message });
        }
    }
}