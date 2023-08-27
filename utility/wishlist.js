const DB = require('../config/database');

function wishList(req, res, next) {

    var queryString = '(';
    if(!req.body.loggedIn) {
        res.redirect('/');
    }
    DB.query(`SELECT propertyId from wishlist WHERE userId = ${req.body.id}`, function(err, rows) {
        if(err)
         throw err;
        else{
            if(rows.length) {
                for(var x = 0; x < rows.length - 1; x++) {
                    queryString = queryString.concat(`${rows[x].propertyId}`+ ',');
                }
                queryString = queryString.concat(`${rows[rows.length - 1].propertyId}`+ ')');
                DB.query(`SELECT * FROM property WHERE id IN ${queryString}`, function(err, properties) {
                    if(err)
                     throw err;
                    else{
                        res.render('wishlist_page', {rows: properties});
                    }
                });
            }
            else{
                res.render('wishlist_page', {rows: []});
            }
        }
    });
}

function addToWishlist(req,res,next) {
   
    DB.query(`INSERT INTO Wishlist VALUES(${req.body.id}, ${req.body.property})`, function(err, rows){
        if(err)
         throw err;
        console.log("Success!");
    });
    res.redirect('/');
};

function removeFromWishlist(req,res,next) {

    DB.query(`DELETE FROM wishlist WHERE propertyId = ${req.body.propertyId} AND userId = ${req.body.id}`, function(err, rows) {
        if(err)
         throw err;
        else{
            res.redirect('/wishlist');
        }
    });   
};

module.exports = {
    wishList,
    addToWishlist,
    removeFromWishlist
};