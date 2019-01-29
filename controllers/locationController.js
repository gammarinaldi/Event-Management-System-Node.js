const conn = require('../database');

module.exports = {
    getListLocation: (req,res) => {
        var sql = 'SELECT * FROM location;';
        conn.query(sql, (err, results) => {
            if(err) throw err;
            res.send(results);
        })   
    },

    getLocation: (req,res) => {
        var sql = `SELECT * FROM location WHERE id = '${req.body.id}'`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
            res.send(results);
        })   
    },

    addLocation: (req,res) => {
        try {
            var sql = 'INSERT INTO location SET ?';
            var data = req.body;
            conn.query(sql, data, (err, results) => {
                if(err) {
                    return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err.message });
                }
                
                sql = 'SELECT * from location;';
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
    },

    editLocation: (req,res) => {
        var LocationId = req.params.id;
        var sql = `SELECT * FROM location WHERE id = ${LocationId};`;
        conn.query(sql, (err, results) => {
            if(err) throw err;
    
            if(results.length > 0) {
                try {
                    sql = `UPDATE location SET ? WHERE id = ${brandId};`
                    conn.query(sql,data, (err1,results1) => {
                        if(err1) {
                            return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err1.message });
                        }
                        sql = `SELECT * FROM location;`;
                        conn.query(sql, (err2,results2) => {
                            if(err2) {
                                return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err1.message });
                            }
                            res.send(results2);
                        })
                    })
                }
                catch(err){
                    return res.status(500).json({ message: "There's an error on the server. Please contact the administrator.", error: err.message });
                }
            }
        })
    },

    deleteLocation: (req,res) => {
        var LocationId = req.params.id;
        var sql = `SELECT * FROM location WHERE id = ${LocationId};`;
        conn.query(sql, (err, results) => {
            if(err) {
                return res.status(500).json({ 
                    message: "There's an error on the server. Please contact the administrator.", 
                    error: err.message });
            }
            
            if(results.length > 0) {
                sql = `DELETE FROM location WHERE id = ${LocationId};`
                conn.query(sql, (err1,results1) => {
                    if(err1) {
                        return res.status(500).json({ 
                            message: "There's an error on the server. Please contact the administrator.", 
                            error: err1.message });
                    }
    
                    sql = `SELECT * FROM location;`;
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