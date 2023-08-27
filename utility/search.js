const DB = require('../config/database');

function search(req,res,next) {

    console.log(req.body);
    var searchString = req.body.searchString;
    var queryString = '';
    for(var x = 0;x < searchString.length; x++) {
        queryString = queryString.concat('%' + `${searchString[x]}`);
    }
    queryString = queryString.concat('%');
    DB.query(`SELECT * FROM property WHERE name LIKE '${queryString}'`, function(err, rows) {
        if(err)
         throw err;
        else{
            var searchResults = [];
            for(var x = 0; x < rows.length; x++){
                searchResults.push(rows[x].id);
            }
            req.body.searchResults = searchResults;
        }
    });
    next();
};

module.exports = {
    search
};