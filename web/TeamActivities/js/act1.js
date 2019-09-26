function Clicked() {
  alert("Clicked!");
}
function changeColor() {
  var firstDiv = document.getElementById("div1");
  var newColor = document.getElementById("pickColor").value;
  newColor = newColor.replace(" ", "");
  newColor = "#" + newColor;
  firstDiv.style.backgroundColor = newColor;
}
