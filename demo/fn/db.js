var mysql = require('mysql');
var Promise=require('promise');
exports.load = sql => {
    return new Promise((resolve, reject) => {
        var cn = mysql.createConnection({
            host: 'db4free.net',
            port: 3306,
            user: 'thanhtuyen',
            password: 'thanhtuyen97',
            database: 'winestore'
        });

        cn.connect();

        cn.query(sql, function(error, rows, fields) {
            if (error) {
                reject(error);
            } else {
                resolve(rows);
            }

            cn.end();
        });
    });
}

