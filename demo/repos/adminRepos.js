var db = require('../fn/db');

exports.layDonDatHang = (maSP) => {

    var sql = "SELECT * FROM winestore.dondathang ORDER BY ngayDH DESC limit 10";
    return db.load(sql);
}


exports.layNhaSanXuat = (maSP) => {

    var sql = "SELECT DISTINCT(NSX) FROM winestore.sanpham";
    return db.load(sql);
}

