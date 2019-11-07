const fs = require("fs");
const path = require("path");

//LYN answer
const folder = process.argv[2];
const ext = "." + process.argv[3];

fs.readdir(folder, function(err, files) {
  if (err) return console.error(err);
  files.forEach(function(file) {
    if (path.extname(file) === ext) {
      console.log(file);
    }
  });
});
//group answer
let dir = process.argv[2];
let ext1 = process.argv[3];

fs.readdir(dir, (e, files) => {
  files.forEach(file => {
    if (path.extname(file).slice(1) == ext1) console.log(file);
  });
});
