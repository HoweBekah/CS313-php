//LYN answer
const fs = require("fs");
const path = require("path");

module.exports = function(dir, filterStr, callback) {
  fs.readdir(dir, function(err, list) {
    if (err) {
      return callback(err);
    }

    list = list.filter(function(file) {
      return path.extname(file) === "." + filterStr;
    });

    callback(null, list);
  });
};
//group answer
let arr = [];
module.exports = function(dir, ext, callback) {
  fs.readdir(dir, (e, files) => {
    if (e) return callback(e);
    else {
      files.forEach(file => {
        if (path.extname(file).slice(1) == ext) {
          arr.push(file);
        }
      });
    }
    return callback(null, arr);
  });
};
