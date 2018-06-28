var db = require('../fn/db');

exports.getSanPhamCungLoaiByMa = sp  => {
    var sql = "SELECT * FROM  winestore.sanpham WHERE loaiSP IN ( SELECT loaiSP FROM  winestore.sanpham WHERE maSP = '"+sp+"') LIMIT 12";
    return db.load(sql);
}
exports.getNhaSanXuatCungLoaiByMa = sp => {
    var sql = "SELECT * FROM  winestore.sanpham WHERE NSX IN ( SELECT NSX FROM  winestore.sanpham WHERE maSP = '"+sp+"') LIMIT 12";
    return db.load(sql);
}
exports.getThongTinByMa = ma => {
    var sql = "select * from sanpham where maSP = '" + ma + "'";
    return db.load(sql);
}

exports.getThongTin = tentimkiem => {
    var sql = "select * from sanpham where tenSP like N'%" + tentimkiem + "%' OR maSP like '%" + tentimkiem + "%'";
    return db.load(sql);
}
exports.getNhaSanXuat = nsx => {
    var sql = "SELECT * FROM  winestore.sanpham WHERE NSX IN ( SELECT NSX FROM  winestore.sanpham WHERE NSX = N'"+nsx+"') LIMIT 12";
    return db.load(sql);
}
exports.getLoaiRuou = sp => {
    var sql = "SELECT * FROM  winestore.sanpham WHERE NSX IN ( SELECT NSX FROM  winestore.sanpham WHERE loaiSP = N'"+sp+"') LIMIT 12";
    return db.load(sql);
}