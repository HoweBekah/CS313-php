const fs = require("fs");

//learnyounode answer
const contents = fs.readFileSync(process.argv[2]);
const lines = contents.toString().split("\n").length - 1;
console.log(lines);

// note you can avoid the .toString() by passing 'utf8' as the
// second argument to readFileSync, then you'll get a String!
//
// fs.readFileSync(process.argv[2], 'utf8').split('\n').length - 1

//group answer
let data = fs.readFileSync(process.argv[2], "utf8");
data = data.split("\n");
console.log(data.length - 1);
