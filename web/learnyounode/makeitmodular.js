//LYN answer
const filterFn = require("./mymodule.js");
const dir = process.argv[2];
const filterStr = process.argv[3];

filterFn(dir, filterStr, function(err, list) {
  if (err) {
    return console.error("There was an error:", err);
  }

  list.forEach(function(file) {
    console.log(file);
  });
});

//group answer
//let dir = process.argv[2];
/*let ext = process.argv[3];

require("./mymodule.js")(dir, ext, (err, data) => {
  if (err) return console.log(err);
  data.forEach(item => console.log(item));
});*/
