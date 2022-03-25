var conn = require('./db');

module.exports = {

      /**
     * @returns Contagem de registros das tabelas tb_contacts, tb_menus, tb_reservations e tb_users.
     */

    dashboard(){

        return new Promise((resolve, reject)=> {

            conn.query(`
            SELECT
                (SELECT 
                        COUNT(*) 
                    FROM tb_contacts) AS nrcontacts,
                (SELECT 
                        COUNT(*) 
                    FROM tb_stuff) AS nrstuff,
                (SELECT 
                        COUNT(*) 
                    FROM tb_reservations) AS nrreservations,
                (SELECT 
                    COUNT(*) 
                FROM tb_emails) AS nremails,
                    (SELECT 
                        COUNT(*) 
                    FROM tb_award) AS nraward,
                (SELECT 
                        COUNT(*) 
                    FROM tb_users) AS nrusers,
                (SELECT 
                        COUNT(*) 
                    FROM tb_users2) AS nrusers2;`
            , (err, results) => {
               
                if (err) {
                    reject(err);
                } else {
                    resolve(results[0]);
                }

            });
        });

    }, 

    /**
     * @req Requisição.
     * @params Parâmetros.
     * @returns Novo objeto criado.
     */

    getParams (req, params) {
        
        return Object.assign({}, {
            menus: req.menus,
            user: req.session.user
        }, params);
    },

    getMenus(req){

        let menus = [
            {
                text:"Tela inicial",
                href:"/admin/",
                icon:"home",
                active: false
            },
            {
                text:"Produtos",
                href:"/admin/menus",
                icon:"recycle",
                active: false
            },
            {
                text:"Prêmios",
                href:"/admin/menuspremios",
                icon:"trophy",
                active: false
            },
            {
                text:"Agendas",
                href:"/admin/reservations",
                icon:"calendar-check-o",
                active: false
            },
            {
                text:"Contatos",
                href:"/admin/contacts",
                icon:"comments",
                active: false
            },
            {
                text:"Administradores",
                href:"/admin/users",
                icon:"user-shield",
                active: false
            },
            {
                text:"Usuários",
                href:"/admin/users2",
                icon:"users",
                active: false
            },
            {
                text:"E-mails",
                href:"/admin/emails",
                icon:"envelope",
                active: false
            }

        ];

        menus.map(menu => {

            if(menu.href === `/admin${req.url}`) menu.active = true;
            
        });

        return menus;
    }
};