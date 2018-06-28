var express = require('express');
var db = require('../fn/db');
var router = express.Router();
var body = require('body-parser');
var home = require('./homeController');
var adminRepos = require('../repos/adminRepos');
router.get('/', function (req, res) {
    router.getLayout(req, res, 'admin/admin');
});
router.get('/admin', function (req, res) {
    router.getLayout(req, res, 'admin/admin');
});
router.get('/dashboard', function (req, res) {
    router.getLayout(req, res, 'admin/admin');
});
router.getLayout = function (req, res, next) {
    var vm = {
        layout: 'adminLayout',
    };
    res.render(next, vm);
}
router.getLayoutThamSo = function (req, res, next,thamso) {

    var vm = {
        layout: 'adminLayout',
        model:thamso
    };
    res.render(next, vm);
}
router.get('/quanlydonhang', function (req, res) {

    adminRepos.layDonDatHang().then(rows=>{
        var vm = {
            donhang: rows
        };
     router.getLayoutThamSo(req, res, 'admin/quanlydonhang',vm);

    });
});

router.get('/quanlysanpham', function (req, res) {

    adminRepos.layDonDatHang().then(rows=>{
        var vm = {
            donhang: rows
        };
     router.getLayoutThamSo(req, res, 'admin/quanlysanpham',vm);

    });
});
router.get('/quanlynsx', function (req, res) {

    console.log('vao');
    adminRepos.layNhaSanXuat().then(rows=>{
        var vm = {
            nsx: rows
        };
    console.log(vm);
     router.getLayoutThamSo(req, res, 'admin/quanlynsx',vm);

    });
});


module.exports = router;