require('dotenv').config({
    path:'config/.env'
});

const mysql = require('mysql');

const mysqlUser = process.env.MYSQL_USER;
const mysqlPassword = process.env.MYSQL_PASSWORD;
const DB = process.env.DATABASE_NAME;

const connection = mysql.createConnection({
  host: 'localhost',
  user: mysqlUser,
  password: mysqlPassword,
  database: DB
});

connection.connect((err) => {
  if (err) throw err;
  console.log('MYSQL Database Connected!');
});

module.exports = connection;