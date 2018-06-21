var express = require('express');
var db = require('./fn/db');

var exphbs = require ('express-handlebars')
var express_handlebars_sections = require('express-handlebars-sections');
var app = express();

var path = require('path');
app.use(express.static(path.resolve(__dirname, 'public')));

app.engine('handlebars', exphbs({defaultLayout: 'index',
  helpers: {
      section: express_handlebars_sections()
  }
}));
app.set('view engine', 'handlebars');

app.get('/', function (req, res) {
  var sql="select * from sanpham"; 
  db.load(sql).then( rows=>{

    var vm={
      ttsp: rows
    };
    res.render('home',vm);
  });
  
});

app.get('/timkiem', function (req, res) {
  var sql="select * from sanpham where tenSP like N'%"+ req.query.tentimkiem +"%' OR maSP like '%"+  req.query.tentimkiem +"%'"; 
  db.load(sql).then( rows=>{

    var vm={
      ttsp: rows
    };
    console.log(vm);
    res.render('timkiem',vm);
  });
});

app.get('/giohang', function (req, res) {
  res.render('giohang');
});
 
app.listen(4000);
module.exports = app;