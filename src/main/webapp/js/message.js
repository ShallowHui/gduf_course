window.onload = function () {
    if ($("#alert p").text() != ""){
        $("#alert").css("display","block")
    }
}
function closeAlert() {
    $("#alert").css("display","none")
}