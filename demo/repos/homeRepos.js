var db = require('../fn/db');

exports.getSPMoiNhat = () => {
    var sql = 'SELECT * FROM winestore.sanpham ORDER BY maSP DESC LIMIT 12';
    return db.load(sql);
}
exports.getSPXemNhieuNhat = () => {
    var sql = 'SELECT * FROM winestore.sanpham ORDER BY slXem DESC LIMIT 12';
    return db.load(sql);
}
exports.getSPBanChayNhat = () => {
    var sql = 'SELECT * FROM winestore.sanpham ORDER BY slMua DESC LIMIT 12';
    return db.load(sql);
}
exports.getLoaiRuou = () => {
    var sql = 'SELECT DISTINCT(loaiSP) FROM winestore.sanpham ORDER BY loaiSP DESC';
    return db.load(sql);
}
exports.getNhaSanXuat = () => {
    var sql = 'SELECT DISTINCT(NSX) FROM winestore.sanpham ORDER BY NSX DESC;';
    return db.load(sql);
}