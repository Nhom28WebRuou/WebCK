var express = require('express');
var app = express();
var exphbs = require('express-handlebars')
var express_handlebars_sections = require('express-handlebars-sections');
var path = require('path');
var body = require('body-parser');
var db = require('./fn/db');
app.engine('handlebars', exphbs({
  defaultLayout: 'index',
  helpers: {
    section: express_handlebars_sections()
  }
}));
app.set('view engine', 'handlebars');
app.use(body.json());
app.use(body.urlencoded({ extended: false }));
app.use(express.static(path.resolve(__dirname, 'public')));
var session = require('express-session');
var MySQLStore = require('express-mysql-session')(session);
var options = {
  host: 'localhost',
  port: 3306,
  user: 'root',
  password: '12121993a',
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
var homeControler = require('./Controllers/homeController');
var accountController = require('./Controllers/accountController');
var timkiemController = require('./Controllers/timkiemController');
var giohangController = require('./Controllers/giohangController');
var cartController = require('./Controllers/cartController');
var adminController = require('./Controllers/adminController');
var home = require('./Controllers/homeController');


app.use('/', homeControler);
app.use('/home', homeControler);
app.use('/account', accountController);
app.use('/timkiem', timkiemController);
app.use('/giohang', giohangController);
app.use('/cart', cartController);
app.use('/admin', adminController);

app.listen(4000);
module.exports = app;