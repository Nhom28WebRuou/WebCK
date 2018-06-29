var db = require('../fn/db');

exports.getSanPhamByMa = (maSP) => {

    var sql = "SELECT * FROM winestore.sanpham WHERE maSP = '" + maSP + "' ";
    return db.load(sql);
}
exports.thanhtoanchitiet = (maDH, maSP, soluong) => {

    var sql = "insert into winestore.chitiethoadon values(" + maDH + ",'" + maSP + "'," + soluong + ");";
    db.themTrucTiep(sql);
}
exports.thanhtoanSP = (maSP, soluong) => {

    var sql = "update winestore.sanpham set slMua = slMua + " + soluong + " where maSP= '" + maSP + "'";
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

exports.getLichSuMuaHang = (maUser) => {
    var sql = "SELECT * FROM winestore.dondathang where username = '" + maUser + "' ORDER BY ngayDH DESC limit 10";
    return db.load(sql);
}
exports.getChiTiet = (maDH) => {

    var sql = "select chitiethoadon.maSP,chitiethoadon.soluong,tenSP,giaSP,linkAnhSP " +
        " from winestore.chitiethoadon " +
        "INNER JOIN sanpham ON chitiethoadon.maSP = sanpham.maSP " +
        "where maHD = " + maDH;
    return db.load(sql);
}

exports.getTongTien = (maDH) => {
    var sql = "select * from winestore.dondathang where maDH = " + maDH;
    return db.load(sql);
}