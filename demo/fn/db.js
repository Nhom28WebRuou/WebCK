var mysql = require('mysql');
var Promise=require('promise');
exports.load = sql => {
    return new Promise((resolve, reject) => {
        var cn = mysql.createConnection({
            host: 'localhost',
            port: 3306,
            user: 'root',
            password: '12121993a',
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
exports.themTrucTiep = sql => {
        var cn = mysql.createConnection({
            host: 'localhost',
            port: 3306,
            user: 'root',
            password: '12121993a',
            database: 'winestore'
        });

        cn.connect();

        cn.query(sql, function(error, rows, fields) {
        cn.end();
    });
}


exports.save = sql => {
    return new Promise((resolve, reject) => {
        var cn = mysql.createConnection({
            host: 'localhost',
            port: 3306,
            user: 'root',
            password: '12121993a',
            database: 'winestore'
        });

        cn.connect();

        cn.query(sql, function(error, value) {
            if (error) {
                reject(error);
            } else {
                resolve(value);
            }

            cn.end();
        });
    });
}


