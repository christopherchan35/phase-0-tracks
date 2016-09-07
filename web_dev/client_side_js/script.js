console.log("Script is loaded!")


var photo = document.getElementById("tennis-photo");
photo.style.border = "5px solid orange";
photo.style.padding = "5px";

var gif = document.getElementById("tennis-gif").style.visibility = "hidden";

// var list = document.getElementById("list");
// list.firstElementChild.style.color = "red";

var em = document.getElementsByTagName("em");
em[0].style.fontSize = "x-large";


var ul = document.getElementById("brand-list");
// console.log(ul.children.length); debugging
for (i = 0; i < ul.children.length ; i++) {
ul.children[i].style.padding = "3px";
ul.children[i].style.color = "orange";
}

function changecolor(event) {
  event.target.style.color = "blue"
}

function changecolor2(event) {
  event.target.style.color = "black"
}


function hide(event) {
  document.getElementById("tennis-gif").style.visibility = "hidden";
}

function reveal(event) {
  document.getElementById("tennis-gif").style.visibility = "visible";
}

var ol = document.getElementById("list");
ol.addEventListener("mouseover", changecolor);

var ol = document.getElementById("list");
ol.addEventListener("mouseout", changecolor2);

var h2 = document.getElementById("h2-gif");
h2.addEventListener("mouseover", reveal);

var ol = document.getElementById("h2-gif");
ol.addEventListener("mouseout", hide);
