// server.js
// load the things we need
var express = require("express");
var app = express();

// set the view engine to ejs
app.set("view engine", "ejs");

// use res.render to load up an ejs view file

// index page
app.get("/", function(req, res) {
  var drinks = [
    { name: "Mt Dew", caffinated: 8 },
    { name: "Sprite", caffinated: 0 },
    { name: "Dr. Pepper", caffinated: 10 }
  ];
  var tagline =
    "Any code of your own that you haven't looked at for six or more months might as well have been written by someone else.";

  res.render("pages/index", {
    drinks: drinks,
    tagline: tagline
  });
});

// about page
app.get("/about", function(req, res) {
  res.render("pages/about");
});

app.listen(8080);
console.log("8080 is the magic port");
