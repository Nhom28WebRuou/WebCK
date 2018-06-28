var express = require('express');
var db = require('../fn/db');
var router = express.Router();
var body = require('body-parser');
var home = require('./homeController');
var acccountRepos = require('../repos/accountRepos');
router.get('/profile', function (req, res) {

  acccountRepos.getProfile(req.session.user.username).then(value => {
    var vm = {
      profile: value[0],
    };
    home.getLayout(req, res, 'account/profile', vm);
  });


});


router.post('/login', function (req, res) {
  var data = req.body;
  var sql = "select user.username from winestore.user " +
    "where user.email = '" + data.signin_email + "' " +
    "and user.password = '" + data.signin_password + "'";

  db.load(sql).then(rows => {
    if (rows.length > 0) {
      req.session.isLogged = true;
      req.session.user = rows[0];
      req.session.cart = [];
      res.redirect('/home');
    }
    else {
      var vm = {
        flag: false
      }
      res.redirect('/home');
    }
  });
});

router.post('/signup', function (req, res) {
  var data = req.body;
  var sql = "insert into winestore.user values('" + data.signup_username + "',' " + data.signup_email + " ', '" + data.signup_password + "')";
  db.load(sql).then(rows => {
    res.render('/home');
  });
});

router.post('/logout', (req, res) => {
  req.session.isLogged = false;
  req.session.user = null;
  // req.session.cart = [];
  res.redirect(req.headers.referer);
});


router.post('/doisdt', function (req, res) {
  var data = req.body;
  var sql = "update winestore.user set sdt = '" + data.sdt + "' where username = '"+req.session.user.username+"'";
  console.log(sql);
  db.save(sql).then(rows => {
    res.redirect(req.headers.referer);
  });
});
router.post('/doigoitinh', function (req, res) {
  var data = req.body;
  var sql = "update winestore.user set gioitinh = '" + data.goitinh + "' where username = '"+req.session.user.username+"'";
  console.log(sql);
  db.save(sql).then(rows => {
    res.redirect(req.headers.referer);
  });
});
module.exports = router;