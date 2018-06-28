var express = require('express');
var db = require('../fn/db');
var Promise = require('promise');
var home = require('./homeController');
var body = require('body-parser');
var giohangRepos = require('../repos/giohangRepos');
var router = express.Router();


router.get('/', function (req, res) {
    var arr_p = [];
    for (var i = 0; i < req.session.cart.length; i++) {
        var cartItem = req.session.cart[i];
        var p = giohangRepos.getSanPhamByMa(cartItem.maSP);
        arr_p.push(p);
    }

    var items = [];
    var tongtien = 0;
    Promise.all(arr_p).then(result => {

        for (var i = result.length - 1; i >= 0; i--) {
            var pro = result[i][0];
            var item = {
                ttsp: pro,
                soluong: req.session.cart[i].soluong,
                giatien: pro.giaSP * (req.session.cart[i].soluong),
            };
            tongtien += pro.giaSP * (req.session.cart[i].soluong);
            items.push(item);
        }

        var vm = {
            items: items,
            giohang: true,
            tongtien: tongtien,
            mustlogin: true,
        };
        home.getLayout(req, res, 'giohang/giohang', vm);
    });
});

router.post('/dathang', function (req, res) {
    var date = new Date();
    var tongsl = 0;
    var data = req.body;
    var cart = req.session.cart;
    var gio=date.getUTCHours()+7;
    if(gio>=24)
        gio=gio-24;
    var ngay=   date.getUTCFullYear()+"-"+Number(date.getUTCMonth()+1)+"-"+date.getUTCDate()+" "+  gio+":"+date.getUTCMinutes()+":"+ date.getUTCSeconds();
    for (i = 0; i < req.session.cart.length; i++) {
        tongsl += cart[i].soluong;
    }
    giohangRepos.thanhtoanHoaDon(req.session.user.username, ngay, tongsl, Number(data.tongtien), cart);

        res.redirect(req.headers.referer);

});

module.exports = router;