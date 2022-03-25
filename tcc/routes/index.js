var conn = require('./../inc/db')
var express = require('express');
var menus = require('./../inc/menus');
var users2 = require('./../inc/users2');
var menuspremios = require('./../inc/menuspremios');
var reservations = require('./../inc/reservations');
var contacts = require('./../inc/contacts');
var emails = require('./../inc/emails');
const users = require('../inc/users');
var logincadastro = require('../inc/logincadastro');
var apresentacao = require('../inc/apresentacao');
var router = express.Router();

router.use(function (req, res, next) {

  if (['/login' , '/logincadastro', '/admin/login', '/apresentacao'].indexOf(req.url) === -1 && !req.session.user) {
    res.redirect('/apresentacao');
  } else {
    next();
  }

});


router.get('/apresentacao', function(req, res, next) {

  apresentacao.render(req, res);

});




/* GET home page. */
router.get('/', function(req, res, next) {


  menus.getMenus().then(results => {

    res.render('index', { 
      title: 'Mais Coleta',
      background: 'images/home1.jpeg',
      menus: results,
      user: req.session.user
    });
  });

});

router.get('/logout', function (req, res, next) {

  delete req.session.user;

  res.redirect('/login');

});

router.post('/login', function (req, res, next) {

  if(!req.body.email) {
    users2.render(req, res, "Preencha o campo E-mail!");    
  } else if (!req.body.password) {
    users2.render(req, res, "Preencha o campo senha");
  } else {

    users2.login(req.body.email, req.body.password).then(user => {

      req.session.user = user;

      res.redirect("/");

    }).catch(err => {

      users2.render(req, res, err.message || err);

    });

  }

});

router.get('/login', function(req, res, next) {

  users2.render(req, res, null);

});

router.get('/contacts', function(req, res, next) {

  contacts.render(req, res);

});

router.get('/logincadastro', function (req, res, next) {

  logincadastro.render(req, res);

});

router.post('/logincadastro', function (req, res, next) {

  if (!req.body.name){
    logincadastro.render(req, res, "Escreva o nome");

  }else if (!req.body.email){
    logincadastro.render(req, res, "Escreva o E-mail");
    
  }else if (!req.body.password){
    logincadastro.render(req, res, "Defina uma senha");
    
  }else{

    logincadastro.save(req.body).then(results => {

      req.body = {};

      logincadastro.render(req, res, null, "Cadastro realizada com sucesso!");

     }).catch(err=>{

      logincadastro.render(req, res, err.message);

     });
  }

});

router.post('/upload',(req, res)=> {
  let form = new formidable.IncomingForm({
    uploadDir: './upload',
    keepExtensions: true
  });
  form.parse(req, (err, fields, files)=>{
    res.json({
      files
    });
  });
});


router.post('/contacts', function(req, res, next) {

  if (!req.body.name) {
    contacts.render(req, res, "Digite o nome");

  }else if (!req.body.email){
    contacts.render(req, res, "Digite o e-mail");
    
  }else if (!req.body.message){
    contacts.render(req, res, "Digite o texto");
    
   
  }else{

     contacts.save(req.body).then(results => {

      req.body = {};

      contacts.render(req, res, null, "Mensagem enviada com sucesso!");

     }).catch(err=>{

      contacts.render(req, res, err.message);

     });
  }

});

router.get('/menus', function(req, res, next) {

  menus.getMenus().then(results => {

    res.render('menus', {
      title: 'Menus - Mais Coleta',
      background: 'images/home1.jpeg',
      menus: results,
      user: req.session.user
    });
  });

});

router.get('/menuspremios', function(req, res, next) {

  menuspremios.getPremios().then(results => {

    res.render('menuspremios', {
      title: 'Premios - Mais Coleta',
      background: 'images/home1.jpeg',
      menuspremios: results,
      user: req.session.user
    });
  });

});

router.get('/reservations', function(req, res, next) {

  reservations.render(req, res) 
      

});
  
router.post('/reservations', function(req, res, next) {

  if (!req.body.item) {
    reservations.render(req, res, "Escolha o ítem");
  
   }else if (!req.body.item){
    reservations.render(req, res, "Selecione a Quantidade");

  }else if (!req.body.name){
    reservations.render(req, res, "Digite o nome de quem vai receber o Motorista");
    
  }else if (!req.body.uf){
    reservations.render(req, res, "Selecione o Estado");

  }else if (!req.body.city){
    reservations.render(req, res, "Selecione a Cidade");

  }else if (!req.body.address){
    reservations.render(req, res, "Coloque o endereço");

  }else if (!req.body.number){
    reservations.render(req, res, "Coloque o número do endereço");

  }else if (!req.body.zip){
    reservations.render(req, res, "Digite o CEP do endereço");
    
  }else if (!req.body.date){
    reservations.render(req, res, "Escolha o data");
    
  }else if (!req.body.time){
    reservations.render(req, res, "Defina a hora!");
    
  }else{

     reservations.save(req.body).then(results => {

      req.body = {};

      reservations.render(req, res, null, "Reserva realizada com sucesso!");

     }).catch(err=>{

      reservations.render(req, res, err.message);

     });
  }

});

router.get('/services', function(req, res, next) {

  res.render('services', {
    title: 'Serviços - Mais Coleta',
    background: 'images/home1.jpeg',
    user: req.session.user
  });
});

router.post("/subscribe", function(req, res, next) {

  emails.save(req).then(results=>{
 
     res.send(results);
 
   }).catch(err=>{
 
     res.send(err);
 
   });
 
 });

module.exports = router;
