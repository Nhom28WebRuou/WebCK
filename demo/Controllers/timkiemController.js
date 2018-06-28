var express = require('express');
var db = require('../fn/db');
var router = express.Router();
var home = require('./homeController');
var timRepos = require('../repos/timkiemRepos');
var body = require('body-parser');
router.get('/', function (req, res) {
    var data= req.body;
    var index=0;
    if(typeof variable == 'undefined')
        index=0;
    else
        index= data.index*12;
    var sql = "select * from sanpham where tenSP like N'%" + req.query.tentimkiem + "%' OR maSP like '%" + req.query.tentimkiem + "%'  limit 12 offset "+index;
    console.log(sql);
    db.load(sql).then(rows => {

        var numbers = [];
        var nPages=Math.floor(rows.length/12);
        for (i = 0; i <= nPages; i++) {
            numbers.push({
                value: i+1,
                isCurPage: i === index
            });
        }

        var vm = {
            ttsp: rows,
            page_numbers: numbers
        };
        console.log(vm);
        home.getLayout(req, res, 'timkiem/timkiem', vm);
    });
});

router.get('/timkiemtheoNSX', function (req, res) {

    var p = timRepos.getNhaSanXuat(req.query.NSX);
    p.then(value => {
        var vm = {
            ttsp: value,
        };
        home.getLayout(req, res, 'timkiem/timkiem', vm);
    });
});

router.get('/timkiemtheoloai', function (req, res) {

    var p = timRepos.getLoaiRuou(req.query.loaiSP);
    p.then(value => {
        var vm = {
            ttsp: value,
        };
        home.getLayout(req, res, 'timkiem/timkiem', vm);
    });
});

router.get('/chitiet', function (req, res) {

    var p1 = timRepos.getThongTinByMa(req.query.masanpham);
    var p2 = timRepos.getSanPhamCungLoaiByMa(req.query.masanpham);
    var p3 = timRepos.getNhaSanXuatCungLoaiByMa(req.query.masanpham);
    Promise.all([p1, p2, p3]).then(values => {
        var vm = {
            ttsp: values[0],
            NSX: values[1],
            sanphamCungLoai: values[2],
            flag: req.session.isLogged,
        };
        home.getLayout(req, res, 'timkiem/chitiet', vm);
    });

});
module.exports = router;