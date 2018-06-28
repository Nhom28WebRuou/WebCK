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
   return db.load(sql);

}
exports.getMaDH = (maUser, ngayDH) => {
    var sql = "select * from winestore.dondathang where username= '" + maUser + "' and ngayDH = '" + ngayDH + "'";
    return db.load(sql);
}

exports.getLichSuMuaHang= (maUser) => {
    var sql = "SELECT * FROM winestore.dondathang where username = '"+maUser+"' ORDER BY ngayDH DESC limit 10";
    return db.load(sql);
}
