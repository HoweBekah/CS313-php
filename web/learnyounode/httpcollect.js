const http = require("http");
const bl = require("bl");

//LYC answer
/*http.get(process.argv[2], function(response) {
  response.pipe(
    bl(function(err, data) {
      if (err) {
        return console.error(err);
      }
      data = data.toString();
      console.log(data.length);
      console.log(data);
    })
  );
});*/

//group answer
let url = process.argv[2];
let arr = [];

http.get(url, request => {
  request.setEncoding("utf8");
  request.on("data", datum => {
    arr.push(datum);
  });
  request.on("error", e => {
    console.log(e);
  });
  request.on("end", () => {
    console.log(arr.join("").length);
    console.log(arr.join(""));
  });
});
