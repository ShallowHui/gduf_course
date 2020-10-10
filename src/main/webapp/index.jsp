<%--
  Created by IntelliJ IDEA.
  User: zunhuier
  Date: 2020/9/29
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>登录</title>

        <!-- 新 Bootstrap4 核心 CSS 文件 -->
        <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
        <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
        <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
        <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
        <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
        <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
        <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <script src="js/main.js"></script>
        <script src="js/util.js"></script>
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <!-- Brand/logo -->
            <ul class="navbar-nav">
                <li class="nav-item"><a class="navbar-brand" href="#"><img src="img/gduf.jpg" style="width:40px"></a></li>
                <li class="nav-item"><a class="navbar-brand" href="#">GDUF</a></li>
            </ul>

        </nav>
        <div id="text" style="padding-top: 150px; text-align: center; color: white"></div>
        <div class="container" style="width: 600px; padding-top: 50px">
            <form action="${pageContext.request.contextPath}/login" onsubmit="return checkLoginForm()" method="post">
                <table class="table table-hover table-dark" style="border-radius:20px">
                    <tbody>
                        <tr>
                            <td style="border-top: none">用户名:</td>
                            <td style="border-top: none">
                                <input name="no" id="usr" type="text" class="form-control" style="height: 40px">
                                <div id="usrAlert"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>密码:</td>
                            <td>
                                <input id="pwd" name="password" type="password" class="form-control" style="height: 40px">
                                <div id="pwdAlert"></div>
                            </td>
                            <td>
                                <button id="showButton" type="button" class="btn btn-outline-primary"
                                        onclick="showPassword()">显示密码</button>
                            </td>
                        </tr>
                        <tr>
                            <td>验证码:</td>
                            <td>
                                <input id="checkCode"  name="checkCode" type="text" placeholder="任意大小写" class="form-control" style="height: 40px">
                                <div id="checkCodeAlert"></div>
                            </td>
                            <td>
                                <img src="${pageContext.request.contextPath}/checkCode" style="width: 90px; height: 38px;"
                                     onclick="this.src=this.src+'?'+Math.random();" data-toggle="tooltip" title="点击刷新" data-placement="right">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" data-toggle="tooltip" title="选择以什么身份登录系统" data-placement="bottom">
                                <select class="form-control" name="client">
                                    <option value="学生">学生</option>
                                    <option value="教师">教师</option>
                                    <option value="管理员">管理员</option>
                                </select>
                            </td>
                            <td><button type="submit" class="btn btn-primary">登&emsp;&emsp;录</button></td>
                        </tr>
                    </tbody>
                </table>
            </form>
            <div class="${requestScope.classattr}">
                <button type="button" class="close" data-dismiss="alert">${requestScope.buttomText}</button>
                <strong>${requestScope.message}</strong>
            </div>
        </div>
    </body>
</html>