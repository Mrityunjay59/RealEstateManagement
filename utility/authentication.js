const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const cookieParser = require('cookie-parser');
const DB = require('./../config/database.js');
const { random } = require('lodash');
var cntr = 0;

function create (req,res,next) {
  const password = bcrypt.hashSync(req.body.password, 3);
  const id = Math.random()*1000
  console.log(id)
    DB.query(`INSERT INTO user(id, name, password, email) VALUES('${id}', '${req.body.username}','${req.body.password}','${req.body.email}')`, function (err, result) {
      if (err)
        next(err);
      else{
        res.json({code:1,status: "success", message: "User added successfully!!!", data: null});
      }
    });
};

function inputLoginCredentials(req,res,next) {
  res.render('signup.ejs');
};

async function validateUser(req, res, next) {

  await jwt.verify(req.cookies.token, req.app.get('secretKey'), function(err, decoded) {
    if (err) {
      req.body.loggedIn = false;
    }else{
      // add user id to request
      req.body.id = decoded.id;  
      req.body.loggedIn = true;
    }
  });
  next();
};

function login(req,res,next) {
    const queryString = `SELECT * FROM user WHERE email = '${req.body.email}'`;
    DB.query(queryString, function(err, rows){
       if (err) {
        console.log(err)
        next(err);
       }else{
            if(rows && rows[0] &&(req.body.password)===(rows[0].password)) {
            const token = jwt.sign({id: rows[0].id}, req.app.get('secretKey'), { expiresIn: '1h' });
            res.cookie('token', token, {
              maxAge: 1000 * 60 * 60, // 1 hour
            });
            res.redirect('/');
           }
        }
    });
};

function logout(req,res,next) {
      if(req.cookies.token){
        res.clearCookie('token');
      }
      res.redirect('/');
};

module.exports = {
    signup: create,
    login: login,
    logout: logout,
    inputLoginCredentials,
    validateUser
};