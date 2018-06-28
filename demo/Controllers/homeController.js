var express = require('express');
var db = require('../fn/db');
var router = express.Router();
var homeRepos = require('../repos/homeRepos');
var Promise = require('promise');
router.get('/', function (req, res) {
  res.redirect('/home');
});

router.getLayout = function(req,res,next,thamso){
  var p1 = homeRepos.getLoaiRuou();
  var p2 = homeRepos.getNhaSanXuat();
  Promise.all([p1, p2]).then(values => {
    var vm = {
      loaiRuou: values[0],
      NSX: values[1],
      model: thamso,
      flag: req.session.isLogged
    };
    res.render(next, vm);
  });
}

router.get('/home', function (req, res) {

  var p1 = homeRepos.getSPMoiNhat();
  var p2 = homeRepos.getSPXemNhieuNhat();
  var p3 = homeRepos.getSPBanChayNhat();

  Promise.all([p1, p2, p3]).then(values => {
    var vm = {
      spMoi: values[0],
      spXem: values[1],
      spChay:values[2],
    };
    router.getLayout(req,res,'home/home',vm);
  });

});

module.exports = router;