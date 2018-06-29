var db = require('../fn/db');

exports.layDonDatHang = (maSP) => {

    var sql = "SELECT * FROM winestore.dondathang  WHERE ttDH = N'Chưa giao' ORDER BY ngayDH DESC limit 10";
    return db.load(sql);
}

exports.layDonDatHangDD = (maSP) => {

    var sql = "SELECT * FROM winestore.dondathang  WHERE ttDH = N'Đặt hàng' ORDER BY ngayDH DESC limit 10";
    return db.load(sql);
}


exports.layNhaSanXuat = (maSP) => {

    var sql = "SELECT DISTINCT(NSX) FROM winestore.sanpham";
    return db.load(sql);
}


exports.datHang = (maDH) => {
    var sql = "update winestore.dondathang d set ttDH= N'Đặt hàng' where maDH= "+ maDH;
    console.log(sql);
    return db.load(sql);
  }
  