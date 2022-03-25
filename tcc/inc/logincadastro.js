var conn = require('./db');
let path = require('path');


module.exports = {

          render(req, res, error, success) {
            res.render("logincadastro", {
                body: req.body,
                error 
            });
        },

        save(fields, files) {

          return new Promise((resolve, reject)=> {
      
           // fields.photo = `images/${path.parse(files.photo.path).base}`;
      
            let query, queryPhoto = '', params = [
              fields.name,
              fields.email,
              fields.password
            ];
            /*
            if (files.photo.name) {
      
              queryPhoto = ',photo = ?';
      
              params.push(fields.photo);
      
            }
      */
            if (parseInt(fields.id) > 0) {
      
              params.push(fields.id);
      
              query = `
                UPDATE tb_users2
                SET name = ?, email = ?, password = ? ${queryPhoto} 
                WHERE id = ?
              `;
      
            } else {
      /*
              if (!files.photo.name) {
      
                reject('Envie a foto do premio.');
      
              }
      */
              query = `
                INSERT INTO tb_users2 (name, email, password) VALUES (?, ?, ?)
              `;
      
            }
      
            conn.query(query, params, (err, results) => {
      
              if (err) {
      
                reject(err);
      
              } else {
      
                resolve(results);
      
              }
      
            });
      
          });
      
        },
        getUsers2(){

          return new Promise((resolve, reject) => {
  
              conn.query(`SELECT * FROM tb_users2 ORDER BY id`,
                (err, results) => {
        
                  if (err) {
                    reject(err);
                  }
        
                  resolve(results);
        
                });
        
            });
        
          }

};
