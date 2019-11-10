const http = require("http");

//LYN answer
http
  .get(process.argv[2], function(response) {
    response.setEncoding("utf8");
    response.on("data", console.log);
    response.on("error", console.error);
  })
  .on("error", console.error);

//group answer
//const http = require('http');
/*let url = process.argv[2];

http.get(url, request => {
  request.setEncoding("utf8");
  request.on("data", datum => {
    console.log(datum);
  });
  request.on("error", e => {
    console.log(e);
  });
});*/
