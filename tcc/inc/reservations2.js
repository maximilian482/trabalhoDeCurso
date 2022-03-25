var conn = require("./db");

module.exports = {

    render(req, res, error, success) {

        res.render('agendas', {
            title: 'Agendas - Restaurante Saboroso',
            background: 'images/img_bg_2.jpg',
            h1: 'Buscamos Gratuitamente!',
            body: req.body,
            error,
            success
          }); 
    },

    save(fields){

        return new Promise((resolve, reject)=>{

            if (fields.date.indexOf('/') > -1) {

                 let date = fields.date.split('/');

                fields.date = `${date[2]}-${date[1]}-${date[0]}`

            };

            let query, params = [
                fields.item,
                fields.qtd_item,  
                fields.name,
                fields.phone,
                fields.city,
                fields.uf,
                fields.address,
                fields.number,
                fields.zip,
                fields.date,
                fields.time
            ];

            if (parseInt(fields.id) > 0) {

                query = `
                    UPDATE tb_schedule
                    SET
                        item = ?,
                        qtd_item = ?,
                        name = ?,
                        phone = ?,
                        city = ?,
                        uf = ?,
                        address = ?,
                        number = ?,
                        zip = ?,
                        date = ?,
                        time = ?
                    WHERE id = ?
                    `;

                    params.push(fields.id);

            } else {

                query = `
                INSERT INTO tb_schedule (item, qtd_item, name, phone, city, uf, address, number, zip, date, time)
                VALUES (?,?,?,?,?,?,?,?,?,?,?)            
            `

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
    getSchedules() {

        return new Promise((resolve, reject) => {
    
          conn.query(`SELECT * FROM tb_schedule ORDER BY date DESC`,
            (err, results) => {
    
              if (err) {
                reject(err);
              }
    
              resolve(results);
    
            });
    
        });
    
      },

      delete(id) {

        return new Promise((resolve, reject) => {
    
          conn.query(`
            DELETE FROM tb_schedule WHERE id = ?
          `, [
              id
            ], (err, results) => {
    
              if (err) {
                reject(err);
              } else {
                resolve(results);
              }
    
            });
    
        });
    
      }

};