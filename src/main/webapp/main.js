var a;
let validate_url = "cardValidate.jsp";

document.getElementById("btn").onclick = function () {
  window.open(validate_url);
};

function checkValidate() {
  if (a == 1) {
    document.getElementById("msg").style.display = "block";
    return (a = 0);
  } else {
    document.getElementById("msg").style.display = "none";
    return (a = 1);
  }
}
