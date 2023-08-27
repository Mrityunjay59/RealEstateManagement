const DB = require('../config/database');

function compare(req,res,next) {
    if(!req.body.prop1 && !req.body.prop2) {
        res.redirect('/');
    }
    else{
        var queryString = `SELECT * FROM property WHERE id IN (${req.body.prop1}, ${req.body.prop2})`;
        DB.query(queryString, function(err, rows) {
            if(err)
             throw err;
            else
            res.render('compare_page.ejs', {rows: rows});
        });
    }  
};

module.exports = {
    compare
};