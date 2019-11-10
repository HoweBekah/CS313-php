const http = require("http");

var PORT = process.env.PORT || 8888;

var path = process.argv[2];

function onRequest(path, res) {
  if (path == "/home") {
    res.writeHead(200, { "Content-Type": "text/html" });
    res.write("<h1>Welcome to the Home Page</h1>");
    res.end();
  } else if (path == "/getData") {
    res.writeHead(200, { "Content-Type": "text/html" });
    jsonObj = { name: "Bekah Howe", class: "cs313" };
    var jsondata = JSON.stringify(jsonObj);
    res.write(jsondata);
    res.end();
  } else {
    res.writeHead(404, { "Content-Type": "text/html" });
    res.end();
  }
}
http
  .createServer(function(req, res) {
    onRequest(path, res);
  })
  .listen(PORT);
