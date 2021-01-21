//conexion a base de datos

//primero exportamos la libreria
const mysql = require('mysql2');

require('dotenv').config();

const connection_mysql = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password:process.env.DB_PASS,
    database: process.env.DB_DATABASE,
    port: process.env.DB_PORT
})

module.exports = {
    connection_mysql : connection_mysql
}