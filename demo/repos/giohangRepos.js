var db = require('../fn/db');

exports.getSanPhamByMa = (maSP) => {

    var sql = "SELECT * FROM winestore.sanpham WHERE maSP = '" + maSP + "' ";
    return db.load(sql);
}
exports.thanhtoanchitiet = (maDH, maSP, soluong) => {

    var sql = "insert into winestore.chitiethoadon values(" + maDH + ",'" + maSP + "'," + soluong + ");";
    console.log(sql);
    db.themTrucTiep(sql);
}
exports.themHoaDon = (maUser, ngayDH, tongSL, tongGT) => {

    var sql = "insert into winestore.dondathang(username,ngayDH,tongSL,tongGT) values ('" + maUser + "','" + ngayDH + "'," + tongSL + "," + tongGT + ")";
    console.log(sql);
    db.themTrucTiep(sql);

}
exports.getMaDH = (maUser, ngayDH) => {
    var sql = "select * from winestore.dondathang where username= '" + maUser + "' and ngayDH = '" + ngayDH + "'";
    return db.load(sql);
}
exports.thanhtoanHoaDon = (maUser, ngayDH, tongSL, tongGT, cart) => {

    exports.themHoaDon(maUser, ngayDH, tongSL, tongGT);
    var proMa = exports.getMaDH(maUser, ngayDH);
    var arr_p = [];


    proMa.then(maDH => {
        console.log(cart.length);
        for (var i = 0; i < cart.length; i++) {
            var cartItem = cart[i];
            exports.thanhtoanchitiet(maDH[0].maDH, cartItem.maSP, cartItem.soluong).then(value=>{});
        }
    });
    Promise.all(arr_p);
    
}