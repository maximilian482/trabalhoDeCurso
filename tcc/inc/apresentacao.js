var conn = require('./db');

module.exports = {

    render(req, res, error, success) {

        res.render('apresentacao', {
            title: 'Contato - Mais Coleta',
            background: 'images/img_bg_3.jpg',
            h1: 'Escreva-nos uma mensagem!',
            body: req.body,
            error,
            user: req.session.user,
            success
            });
        }

};
