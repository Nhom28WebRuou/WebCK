
var db = require('../fn/db');

exports.getProfile = (Username) => {
    var sql = "select * from winestore.user " +
      "where user.username = '" + Username + "' " ;
    return db.load(sql);
}

