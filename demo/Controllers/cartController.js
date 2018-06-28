var express = require('express');
var db = require('../fn/db');
var Promise = require('promise');
var home = require('./homeController');
var body = require('body-parser');
var cartRepos = require('../repos/cartRepos');
var router = express.Router();

router.post('/add', function (req, res) {
    var data = req.body;
    var item = {
        maSP: data.maSP,
        soluong: Number(data.soluongMua),
    };
    cartRepos.add(req.session.cart, item);
    res.redirect(req.headers.referer);
});

router.post('/dathang', function (req, res) {
    var data = req.body;
    var item = {
        maSP: data.maSP,
        soluong: Number(data.soluongMua),
    };
    cartRepos.add(req.session.cart, item);
    res.redirect(req.headers.referer);
});


module.exports = router;