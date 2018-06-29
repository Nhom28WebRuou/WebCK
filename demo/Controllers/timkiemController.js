var express = require('express');
var db = require('../fn/db');
var router = express.Router();
var home = require('./homeController');
var timRepos = require('../repos/timkiemRepos');
var body = require('body-parser');


router.get('/', function (req, res) {
    var index = 0;
    var prev = 1;
    var next = 0;
    var vt = 1;
    if (typeof req.query.page == 'undefined')
        index = 0;
    else {
        vt = Number(req.query.page);
        index = (vt - 1) * 12;
        if (vt > 1)
            prev = vt - 1;
    }
    timRepos.getTimKiemTong(req.query.tentimkiem).then(tongsl => {
        timRepos.getTimKiem(req.query.tentimkiem, index).then(rows => {

            var tong = Number(tongsl[0].TONG) -1;
            if (tong < 0)
                tong = 0;
            var numbers = [];
            var nPages = Math.floor(tong / 12);
            for (i = 0; i <= nPages; i++) {
                numbers.push({
                    value: i + 1,
                    isCurPage: (i + 1) == vt,
                    timkiem: "tentimkiem="+req.query.tentimkiem
                });
            }

            if (vt < nPages + 1) {
                next = vt + 1;
            }
            else
                next = vt;
            var vm = {
                ttsp: rows,
                timkiem: "tentimkiem="+req.query.tentimkiem,
                page_numbers: numbers,
                isPage: nPages != 0,
                isPrev: vt != 1,
                isNext: vt != (nPages + 1),
                prev: prev,
                next: next
            };
            home.getLayout(req, res, 'timkiem/timkiem', vm);
        });
    });

    
});




router.get('/timkiemtheoNSX', function (req, res) {


    var index = 0;
    var prev = 1;
    var next = 0;
    var vt = 1;
    if (typeof req.query.page == 'undefined')
        index = 0;
    else {
        vt = Number(req.query.page);
        index = (vt - 1) * 12;
        if (vt > 1)
            prev = vt - 1;
    }
    timRepos.getNhaSanXuatTong(req.query.NSX).then(tongsl => {
        timRepos.getNhaSanXuat(req.query.NSX,index).then(rows => {

            var tong = Number(tongsl[0].TONG) -1;
            if (tong < 0)
                tong = 0;
            var numbers = [];
            var nPages = Math.floor(tong / 12);
            for (i = 0; i <= nPages; i++) {
                numbers.push({
                    value: i + 1,
                    isCurPage: (i + 1) == vt,
                    timkiem: "NSX="+req.query.NSX
                });
            }

            if (vt < nPages + 1) {
                next = vt + 1;
            }
            else
                next = vt;
            var vm = {
                ttsp: rows,
                timkiem: "NSX="+req.query.NSX,
                page_numbers: numbers,
                isPage: nPages != 0,
                isPrev: vt != 1,
                isNext: vt != (nPages + 1),
                prev: prev,
                next: next
            };
            home.getLayout(req, res, 'timkiem/timkiem', vm);
        });
    });





});

router.get('/timkiemtheoloai', function (req, res) {


    var index = 0;
    var prev = 1;
    var next = 0;
    var vt = 1;
    if (typeof req.query.page == 'undefined')
        index = 0;
    else {
        vt = Number(req.query.page);
        index = (vt - 1) * 12;
        if (vt > 1)
            prev = vt - 1;
    }
    timRepos.getLoaiRuouTong(req.query.loaiSP).then(tongsl => {
        timRepos.getLoaiRuou(req.query.loaiSP,index).then(rows => {

            var tong = Number(tongsl[0].TONG) -1;
            if (tong < 0)
                tong = 0;
            var numbers = [];
            var nPages = Math.floor(tong / 12);
            for (i = 0; i <= nPages; i++) {
                numbers.push({
                    value: i + 1,
                    isCurPage: (i + 1) == vt,
                    timkiem: "loaiSP="+req.query.loaiSP
                });
            }

            if (vt < nPages + 1) {
                next = vt + 1;
            }
            else
                next = vt;
            var vm = {
                ttsp: rows,
                timkiem: "loaiSP="+req.query.loaiSP,
                page_numbers: numbers,
                isPage: nPages != 0,
                isPrev: vt != 1,
                isNext: vt != (nPages + 1),
                prev: prev,
                next: next
            };
            home.getLayout(req, res, 'timkiem/timkiem', vm);
        });
    });


});

router.get('/chitiet', function (req, res) {

    var p1 = timRepos.getThongTinByMa(req.query.masanpham);
    var p2 = timRepos.getSanPhamCungLoaiByMa(req.query.masanpham);
    var p3 = timRepos.getNhaSanXuatCungLoaiByMa(req.query.masanpham);
    var p4 = timRepos.updateLuotxem(req.query.masanpham);
    Promise.all([p1, p2, p3, p4]).then(values => {
        var vm = {
            ttsp: values[0][0],
            NSX: values[1],
            sanphamCungLoai: values[2],
            flag: req.session.isLogged,
        };
        home.getLayout(req, res, 'timkiem/chitiet', vm);
    });

});
module.exports = router;