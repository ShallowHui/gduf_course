<%--
  Created by IntelliJ IDEA.
  User: zunhuier
  Date: 2020/10/10
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>主页</title>

        <!-- 新 Bootstrap4 核心 CSS 文件 -->
        <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
        <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
        <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
        <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
        <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
        <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
        <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <script src="${pageContext.request.contextPath}/js/main.js"></script>
        <script src="${pageContext.request.contextPath}/js/alert.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">
    </head>
    <body>
        <!-- 导航栏 -->
        <nav class="navbar navbar-expand-sm bg-light navbar-light">
            <a class="navbar-brand" href="https://www.gduf.edu.cn/"><img src="${pageContext.request.contextPath}/img/gduf.jpg" style="width:50px; height:50px; border-radius:50%"></a>
            <ul class="navbar-nav">
                <li class="nav-item"><a class="navbar-brand" href="https://www.gduf.edu.cn/" target="_blank">GDUF</a></li>
                <li class="nav-item"><a class="navbar-brand" style="color: green">欢迎您，管理员</a></li>
            </ul>
            <button type="button" class="btn btn-primary navbar-brand" onclick="window.location.href='${pageContext.request.contextPath}/loginout'">退出登录</button>
        </nav>
        <div id="demo" class="carousel slide" data-ride="carousel" style="width:1600px; margin:0 auto; padding-top:20px">
            <!-- 指示符 -->
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>
            <!-- 轮播图片 -->
            <div class="carousel-inner" style="height:300px; border-radius: 25px">
                <div class="carousel-item active">
                    <img src="${pageContext.request.contextPath}/img/xiaoqing70.png" width="100%" height="100%">
                    <div class="carousel-caption">
                        <h3>公告</h3>
                        <p>${sessionScope.bulletins.get(0)}</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/img/xiaoqing70.png" width="100%" height="100%">
                    <div class="carousel-caption">
                        <h3>公告</h3>
                        <p>${sessionScope.bulletins.get(1)}</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/img/xiaoqing70.png" width="100%" height="100%">
                    <div class="carousel-caption">
                        <h3>公告</h3>
                        <p>${sessionScope.bulletins.get(2)}</p>
                    </div>
                </div>
            </div>
            <!-- 左右切换按钮 -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
        <table>
        	<tr>
        		<td><a class="buttomLink" href="${pageContext.request.contextPath}/toregister">添加账号</a></td>
        		<td><a class="buttomLink" href="${pageContext.request.contextPath}/toBulletin">发布公告</a></td>
                <td><a class="buttomLink" href="#" onclick="openAlert()">...</a></td>
        	</tr>
        </table>
        <div id="alert" style="display: none">
            <p>更多功能，敬请期待...</p>
            <button type="button" class="btn btn-primary" onclick="closeAlert()">确认</button>
        </div>
    </body>
</html>