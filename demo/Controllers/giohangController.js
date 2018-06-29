var express = require('express');
var db = require('../fn/db');
var Promise = require('promise');
var home = require('./homeController');
var body = require('body-parser');
var giohangRepos = require('../repos/giohangRepos');
var router = express.Router();
var cartRepos = require('../repos/cartRepos');


router.get('/', function (req, res) {
    if (typeof req.session.user == 'undefined' || req.session.user == null) {
        res.redirect('/');
        return;
    }
    var arr_p = [];
    pLichSu = giohangRepos.getLichSuMuaHang(req.session.user.username);
    arr_p.push(pLichSu);
    for (var i = 0; i < req.session.cart.length; i++) {
        var cartItem = req.session.cart[i];
        var p = giohangRepos.getSanPhamByMa(cartItem.maSP);
        arr_p.push(p);
    }
    var items = [];
    var tongtien = 0;
    Promise.all(arr_p).then(result => {
        for (var i = result.length - 1; i > 0; i--) {
            var pro = result[i][0];
            var item = {
                ttsp: pro,
                soluong: req.session.cart[i - 1].soluong,
                giatien: pro.giaSP * (req.session.cart[i - 1].soluong),
            };
            tongtien += pro.giaSP * (req.session.cart[i - 1].soluong);
            items.push(item);
        }

        var vm = {
            lichsu: result[0],
            items: items,
            giohang: true,
            tongtien: tongtien,
            mustlogin: true,
        };
        home.getLayout(req, res, 'giohang/giohang', vm);
    });
});


router.get('/chitietgiohang', function (req, res) {
    if (typeof req.session.user == 'undefined' || req.session.user == null) {
        res.redirect('/');
        return;
    }
    var username= req.session.user.username;
    var maDH = req.query.maDH;
    var pLichSu = giohangRepos.getLichSuMuaHang(username);
    var chitiet=giohangRepos.getChiTiet(maDH);
    var tongtien=giohangRepos.getTongTien(maDH);
    Promise.all([pLichSu, chitiet,tongtien]).then(values => {
        var ct= values[1];
        var vm = {
            lichsu: values[0],
            ctlichsu: values[1],
            tongtien:values[2][0],
            giohang: true,

        };
        home.getLayout(req, res, 'giohang/chitietgiohang', vm);
    });
});



router.post('/dathang', function (req, res) {
    var date = new Date();
    var tongsl = 0;
    var data = req.body;
    var cart = req.session.cart;
    var username = req.session.user.username;
    var gio = date.getUTCHours() + 7;
    if (gio >= 24)
        gio = gio - 24;
    var ngay = date.getUTCFullYear() + "-" + Number(date.getUTCMonth() + 1) + "-" + date.getUTCDate() + " " + gio + ":" + date.getUTCMinutes() + ":" + date.getUTCSeconds();
    for (i = 0; i < cart.length; i++) {
        tongsl += cart[i].soluong;
    }
    giohangRepos.themHoaDon(username, ngay, tongsl, Number(data.tongtien)).then(value => {
        giohangRepos.getMaDH(username, ngay).then(maDHs => {


            var arr_p = [];
            for (var i = 0; i < cart.length; i++) {
                var cartItem = cart[i];
                var p = giohangRepos.thanhtoanchitiet(maDHs[0].maDH, cartItem.maSP, cartItem.soluong);
                arr_p.push(p);
            }
            Promise.all(arr_p).then(result => {
                req.session.cart = [];
                res.redirect(req.headers.referer);
            });
        });
    });
});



router.post('/giam', function (req, res) {
    var data = req.body;
    var item = {
        maSP: data.maSP,
        soluong: 1,
    };
    console.log(item);
    cartRepos.sub(req.session.cart, item);
    res.redirect('/giohang');
});

router.post('/tang', function (req, res) {
    var data = req.body;
    var item = {
        maSP: data.maSP,
        soluong: 1,
    };
    console.log(data);
    cartRepos.add(req.session.cart, item);
    res.redirect('/giohang');
});

module.exports = router;