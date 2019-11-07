const fs = require("fs");
const file = process.argv[2];

//LYN answer
fs.readFile(file, function(err, contents) {
  if (err) {
    return console.log(err);
  }
  // fs.readFile(file, 'utf8', callback) can also be used
  const lines = contents.toString().split("\n").length - 1;
  console.log(lines);
});

//group answer
fs.readFile(file, "utf8", function(err, data) {
  if (err) console.log("OH no, something bad happened :(");
  console.log(data.split("\n").length - 1);
});
