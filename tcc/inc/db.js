const mysql = require('mysql2')

const connection = mysql.createConnection({
      host : '127.0.0.1',
      user : 'root',
      password : 'M@ysa100',
      database : 'maisColeta'
  });

module.exports = connection;

//conexão com o banco de dados