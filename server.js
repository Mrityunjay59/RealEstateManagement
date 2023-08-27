require('dotenv').config({
    path:'config/.env'
});

const express = require('express');
const morgan = require('morgan');
const _ = require('lodash');
const bodyParser = require('body-parser');
const jwt = require('jsonwebtoken');
const cookieParser = require('cookie-parser');
const cors = require('cors');
const DB = require('./config/database');
const util = require('./utility');
const { render } = require('ejs');

const app = express();

const secret = process.env.SECRET_KEY;
app.set('secretKey', secret);
app.use(cookieParser());
app.use(bodyParser.urlencoded({ extended: true }))
app.use(bodyParser.json());
// app.use(cors());
app.use(express.static('public'));
app.set('view engine', 'ejs');

const PORT = process.env.PORT || 3000;

// ROUTES Created (For Trial Run)
var filter = 0; // Used to display corresponding text as heading
/* 
    filter = 0 for home page
    1 for area filter
    2 for Cost filter
    3 for BHK filter
    4 for date filter
*/

// Utilities for different operations
const auth = util.authentication;
const landing = util.landing;
const wishlist = util.wishlist;
const feedback = util.feedback;
const search = util.search;
const compare = util.compare;


// Routes BEGIN
app.get('/', auth.validateUser, landing.renderIndexPage);

// Authentication
app.get('/login', auth.inputLoginCredentials);
app.post('/login', auth.login);

app.post('/signup', auth.signup);

app.post('/logout', auth.logout);


// Comparison
app.post('/compare', compare.compare);

// Wishlist
app.get('/wishlist', auth.validateUser, wishlist.wishList);
app.post('/wishlist', auth.validateUser, wishlist.addToWishlist);
app.post('/removeFromWishlist', auth.validateUser, wishlist.removeFromWishlist);

// Feedback
app.get('/feedback', auth.validateUser, feedback.receiveFeedback);
app.post('/feedback', auth.validateUser, feedback.submitFeedback);

// Search
app.post('/search', search.search, landing.renderIndexPage);

/*
app.get('/filter-area', function(req, res) {
    filter = 1;
    DB.query('select * from property order by area', (err, rows) => {
        if( err ) throw err;
        // console.log(rows);
        res.render('index', {rows: rows, filter: filter});
    });
});

app.get('/filter-cost', function(req, res) {
    filter = 2;
    DB.query('select * from property order by cost', (err, rows) => {
        if( err ) throw err;
        res.render('index', {rows: rows, filter: filter}); 
    });
});*/


// Routes End


app.listen(PORT, function (err) {
    if (err) throw error;
    console.log(`Server running at port ${PORT}`);
});