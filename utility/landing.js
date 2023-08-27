const DB = require('../config/database');

function renderIndexPage(req,res,next) {
    filter = 0;
    // Code for Card Test Run
    var queryString = 'Select * from property ';
    if(req.body.loggedIn){
        var wishlistQuery = `SELECT propertyId from Wishlist WHERE userId = ${req.body.id}`;
        DB.query(wishlistQuery, function(err, wishlist) {
            if(err)
             throw err;
            console.log(wishlist);
            DB.query(queryString, (err, rows) => {
                if(err) 
                 throw err;
                else{
                    var wishlistItems = [];
                    for(var x = 0;x < wishlist.length; x++ ) {
                        wishlistItems.push(wishlist[x].propertyId);
                    }
                    console.log(wishlistItems);
                    for(var x = 0;x < rows.length; x++) {
                        if(wishlistItems.includes( rows[x].id)) {
                            rows[x].wishlisted = true;
                        }
                    }

                    if(req.body.searchResults){
                        console.log(req.body.searchResults);
                        var searchResults = req.body.searchResults;
                        rows = rows.filter(function(row) {
                            return !searchResults.includes(row.id);
                        });
                        req.body.search = true;
                    }
                    if(req.body.loggedIn) {
                        DB.query(`SELECT name FROM user WHERE id = ${req.body.id}`, function(err, userInfo) {
                            if(err)
                             throw err;
                             res.render('index.ejs', {rows: rows, filter: filter, loggedIn: req.body.loggedIn, userInfo:userInfo, search: req.body.search});
                        });    
                    }
                    else{
                        res.render('index.ejs', {rows: rows, filter: filter, loggedIn: req.body.loggedIn, search: req.body.search});
                    }
                }
            }); 
        });
    }
    else{
        DB.query(queryString, (err, rows) => {
            if(err) 
             throw err;
            else{
                if(req.body.searchResults){
                    var searchResults = req.body.searchResults;
                    rows = rows.filter(function(row) {
                        return searchResults.includes(row.id);
                    });
                    req.body.search = true;
                }
                if(req.body.loggedIn) {
                    DB.query(`SELECT name FROM user WHERE id = ${req.body.id}`, function(err, userInfo) {
                        if(err)
                         throw err;
                         res.render('index.ejs', {rows: rows, filter: filter, loggedIn: req.body.loggedIn, userInfo:userInfo, search: req.body.search});
                    });    
                }
                else{
                    res.render('index.ejs', {rows: rows, filter: filter, loggedIn: req.body.loggedIn, search: req.body.search});
                }
            }
        }); 
    }
};

module.exports = {
    renderIndexPage
};