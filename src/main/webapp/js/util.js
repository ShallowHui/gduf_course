window.onload = function() {
    var divTyping = document.getElementById('text')
    var i = 0, timer = 0
    var typeString = '欢迎来到选课管理系统~'
    function typing () {
        if (i < typeString.length) {
            divTyping.innerHTML = typeString.slice(0, i++) + '|'
            divTyping.style.fontSize = "30px"
            divTyping.style.fontFamily = "sans-serif"
            timer = setTimeout(typing, 350)
        }else{
            typeReverse()
        }
    }
    //反向删除字符串
    function typeReverse () {
        if(i > 0){
            divTyping.innerHTML = typeString.slice(0, i--) + '|'
            divTyping.style.fontSize = "30px"
            divTyping.style.fontFamily = "sans-serif"
            timer = setTimeout(typeReverse,150)
        }else{
            typing()
        }
    }
    typing()
}

/*
    显示密码框中的密码
 */
function showPassword() {
    if ($("#pwd").attr("type") === "text"){
        $("#pwd").attr("type","password")
        $("#showButton").text("显示密码")
    } else {
        $("#pwd").attr("type","text")
        $("#showButton").text("隐藏密码")
    }
}

/*
    检查表单中的输入框是否为空
 */
function checkLoginForm() {
    if($("#usr").val()==="" || $("#pwd").val()==="" || $("#checkCode").val()==="") {
        if ($("#usr").val() === ""){
            $("#usrAlert").attr({
                "class":"alert alert-warning alert-dismissible fade show",
                "style":"text-align: center; padding: 0px; margin: 0px auto; margin-top: 3px; width: 200px;"
            })
            $("#usrAlert").html("<strong>用户名不能为空!</strong>")
        } else {
            $("#usrAlert").removeAttr("class")
            $("#usrAlert").html("")
        }
        if ($("#pwd").val() === ""){
            $("#pwdAlert").attr({
                "class":"alert alert-warning alert-dismissible fade show",
                "style":"text-align: center; padding: 0px; margin: 0px auto; margin-top: 3px; width: 200px;"
            })
            $("#pwdAlert").html("<strong>密码不能为空!</strong>")
        } else {
            $("#pwdAlert").removeAttr("class")
            $("#pwdAlert").html("")
        }
        if ($("#checkCode").val() === ""){
            $("#checkCodeAlert").attr({
                "class":"alert alert-warning alert-dismissible fade show",
                "style":"text-align: center; padding: 0px; margin: 0px auto; margin-top: 3px; width: 200px;"
            })
            $("#checkCodeAlert").html("<strong>验证码不能为空!</strong>")
        } else {
            $("#checkCodeAlert").removeAttr("class")
            $("#checkCodeAlert").html("")
        }
        return false
    } else {
        return true
    }
}
