var db = require('../fn/db');

exports.getSanPhamCungLoaiByMa = sp => {
    var sql = "SELECT * FROM  winestore.sanpham WHERE loaiSP IN ( SELECT loaiSP FROM  winestore.sanpham WHERE maSP = '" + sp + "') LIMIT 12";
    return db.load(sql);
}
exports.getNhaSanXuatCungLoaiByMa = sp => {
    var sql = "SELECT * FROM  winestore.sanpham WHERE NSX IN ( SELECT NSX FROM  winestore.sanpham WHERE maSP = '" + sp + "') LIMIT 12";
    return db.load(sql);
}
exports.getThongTinByMa = ma => {
    var sql = "select * from winestore.sanpham where maSP = '" + ma + "'";
    return db.load(sql);
}

exports.updateLuotxem = ma => {
    var sql = "update  winestore.sanpham set  slXem = slXem + 1  where maSP = '" + ma + "'";
    return db.load(sql);
}

exports.getThongTin = tentimkiem => {
    var sql = "select * from sanpham where tenSP like N'%" + tentimkiem + "%' OR maSP like '%" + tentimkiem + "%'";
    return db.load(sql);
}
exports.getNhaSanXuat = (nsx,index) => {
    var sql = "SELECT * FROM  winestore.sanpham WHERE NSX IN ( SELECT NSX FROM  winestore.sanpham WHERE NSX like N'%" + nsx + "%') LIMIT 12 offset " + index;
    return db.load(sql);
}
exports.getLoaiRuou = (sp,index) => {
    var sql = "SELECT * FROM  winestore.sanpham WHERE NSX IN ( SELECT NSX FROM  winestore.sanpham WHERE loaiSP  like N'%" + sp + "%') LIMIT 12  offset " + index;
    return db.load(sql);
}

exports.getTimKiem = (maSP, index) => {
    var sql = "select * from sanpham where tenSP like N'%" + maSP + "%' OR maSP like '%" + maSP + "%'  limit 12 offset " + index;
    return db.load(sql);
}
exports.getTimKiemTong = (maSP) => {
    var sql = "select COUNT(*) as TONG from sanpham where tenSP like N'%" + maSP + "%' OR maSP like '%" + maSP + "%' ";
    return db.load(sql);
}
exports.getLoaiRuouTong = (sp,index) => {
    var sql = "SELECT  COUNT(*) as TONG FROM  winestore.sanpham WHERE NSX IN ( SELECT NSX FROM  winestore.sanpham WHERE loaiSP  like N'%" + sp + "%')";
    return db.load(sql);
}
exports.getNhaSanXuatTong = nsx => {
    var sql = "SELECT  COUNT(*) as TONG FROM  winestore.sanpham WHERE NSX IN ( SELECT NSX FROM  winestore.sanpham WHERE NSX like N'%" + nsx + "%') ";
    return db.load(sql);
}
