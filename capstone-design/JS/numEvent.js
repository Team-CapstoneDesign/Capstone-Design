// 숫자 입력 버튼

var myInput = document.getElementById("my-input");

function stepper(btn) {
    var id = btn.getAttribute("id");
    var min = parseInt(myInput.getAttribute("min"));
    var max = parseInt(myInput.getAttribute("max"));
    var step = parseInt(myInput.getAttribute("step"));
    var val = parseInt(myInput.getAttribute("value"));
    var calcStep = (id == "increment") ? step : -step;
    var newValue = val + calcStep;

    if (newValue >= min && newValue <= max) {
        myInput.setAttribute("value", newValue);
    }
}
