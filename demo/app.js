var express = require('express');
var db = require('./fn/db');
var exphbs = require('express-handlebars')
var express_handlebars_sections = require('express-handlebars-sections');
var app = express();
var path = require('path');
app.use(express.static(path.resolve(__dirname, 'public')));
var body = require('body-parser');
app.use(body.json());
app.use(body.urlencoded({ extended: false }));

var session = require('express-session');
var MySQLStore = require('express-mysql-session')(session);

var options = {
  host: 'db4free.net',
  port: 3306,
  user: 'thanhtuyen',
  password: 'thanhtuyen97',
  database: 'winestore',
  createDatabaseTable: true,
  schema: {
    tableName: 'sessions',
    columnNames: {
      session_id: 'session_id',
      expires: 'expires',
      data: 'data'
    }
  }
};
var sessionStore = new MySQLStore(options);
app.use(session({
  key: 'session_cookie_name',
  secret: 'session_cookie_secret',
  store: sessionStore,
  resave: false,
  saveUninitialized: false
}));




app.engine('handlebars', exphbs({
  defaultLayout: 'index',
  helpers: {
    section: express_handlebars_sections()
  }
}));
app.set('view engine', 'handlebars');

app.get('/', function (req, res) {
  var sql = "select * from sanpham";
  db.load(sql).then(rows => {

    var vm = {
      ttsp: rows
    };
    res.render('home', vm);
  });
});
app.get('/home', function (req, res) {
  var sql = "select * from sanpham";
  db.load(sql).then(rows => {

    var vm = {
      ttsp: rows,
      flag: req.session.isLogged
    };
    res.render('home', vm);
  });
});


app.get('/timkiem', function (req, res) {
  var sql = "select * from sanpham where tenSP like N'%" + req.query.tentimkiem + "%' OR maSP like '%" + req.query.tentimkiem + "%'";
  db.load(sql).then(rows => {

    var vm = {
      ttsp: rows
    };
    res.render('timkiem', vm);
  });
});

app.get('/chitiet', function (req, res) {
  var sql = "select * from sanpham where maSP = '" + req.query.masanpham + "'";
  db.load(sql).then(rows => {

    var vm = {
      ttsp: rows
    };
    res.render('chitiet', vm);
  });

});
app.get('/giohang', function (req, res) {
  res.render('giohang');
});

router.post('/login', (req, res) => {
  var user = {
    username: req.body.username,
    password: SHA256(req.body.pass).toString()
  };
  accountRepo.login(user).then(rows => {
    if (rows.length > 0) {
      req.session.isLogged = true;
      req.session.user = rows[0];
      req.session.cart = [];
      req.session.Authorized = rows[0].loaiNguoiDung;
      if (rows[0].loaiNguoiDung === 0) {
        var url = '/';
        if (req.query.retUrl) {
          url = req.query.retUrl;
        }
        res.redirect(url);
      } else {
        res.redirect('../manager/dashboard');
      }


    } else {

      var vm = {
        showError: true,
        errorMsg: 'Tên hoặc mật khẩu không đúng.',
      };
      res.render('account/dang-nhap', vm);
    }
  });
});


app.post('/login', function (req, res) {
  var data = req.body;
  var sql = "select user.username from winestore.user " +
    "where user.email = '" + data.signin_email + "' " +
    "and user.password = '" + data.signin_password + "'";

  db.load(sql).then(rows => {
    if (rows.length > 0) {
      req.session.isLogged = true;
      req.session.user = rows[0];
      req.session.cart = [];
      res.redirect('home');
    }
    else {
      var vm = {
        flag: false
      }
      res.render('home', vm);
    }
  });
  ;
});

app.post('/signup', function (req, res) {
  var data = req.body;
  var sql = "insert into winestore.user values('" + data.signup_username + "',' " + data.signup_email + " ', '" + data.signup_password + "')";
  db.load(sql).then(rows => {
    res.render('home');
  });
});


app.listen(4000);
module.exports = app;