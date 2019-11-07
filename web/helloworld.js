const http = require("http");
const url = require("url");
let server = http
  .createServer(socket => {
    socket.end(string);
  })
  .listen(process.argv[2]);
console.log("working?");
