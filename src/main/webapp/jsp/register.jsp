<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="teacher" value="${sessionScope.teacher}" scope="page"></c:set>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>添加账号</title>

        <!-- 新 Bootstrap4 核心 CSS 文件 -->
        <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
        <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
        <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
        <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
        <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
        <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
        <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <script src="${pageContext.request.contextPath}/js/message.js"></script>
        <script src="${pageContext.request.contextPath}/js/main.js"></script>
        <script defer="defer" id="ribbon_piao" mobile="true" src="${pageContext.request.contextPath}/js/caidai.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/backgroundcolor.css">
        <style>
            #alert{
                position: absolute;
                background-color: white;
                border-radius: 20px;
                width: 300px;
                height: 150px;
                text-align: center;
                z-index: 100;
                left: 43%;
                top: 40%;
                box-shadow: -2px 0px 10px #d6cdcd,   /*左边阴影*/
                0px -2px 10px #d6cdcd,  /*上边阴影*/
                2px 0px 10px #d6cdcd,  /*右边阴影*/
                0px 2px 10px #d6cdcd; /*下边阴影*/
            }
            #alert p{
                height: 40px;
                display: block;
                text-align: center;
                line-height: 40px;
            }
        </style>
	</head>
	<body>
        <!-- 导航栏 -->
        <nav class="navbar navbar-expand-sm bg-light navbar-light">
            <a class="navbar-brand" href="https://www.gduf.edu.cn/" target="_blank"><img src="${pageContext.request.contextPath}/img/gduf.jpg" style="width:50px; height:50px; border-radius:50%"></a>
            <ul class="navbar-nav">
                <li class="nav-item"><a class="navbar-brand" href="https://www.gduf.edu.cn/" target="_blank">GDUF</a></li>
				<li class="nav-item"><a class="navbar-brand" href="${pageContext.request.contextPath}/ahome">主页</a></li>
            </ul>
        </nav>
        <div id="body-wrap">    
        	<div class="content">
                <div class="container">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#teacher">教师注册</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#student">学生注册</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="teacher" class="container tab-pane active"><br>
                            <form action="${pageContext.request.contextPath}/doregister" method="post">
                                <input type="hidden" name="client" value="教师">
                                <div class="form-group">
                                    <label for="usr">教师名字</label>
                                    <input type="text" class="form-control" id="usr" placeholder="请输入教师名字" name="name">
                                </div>
                                <div class="form-group">
                                    <label for="pwd">密码：</label>
                                    <input type="password" class="form-control" id="pwd" placeholder="请输入密码" name="password">
                                </div>
                                <div class="form-group">
                                    <label for="pwd2">确认密码</label>
                                    <input type="password" class="form-control" id="pwd2" placeholder="请再次输入密码" name="password1">
                                </div>
                                <button type="submit" class="btn btn-primary" style="margin: 0 auto; display: block">注册</button>
                            </form>
                        </div>
                        <div id="student" class="container tab-pane fade"><br>
                            <form action="${pageContext.request.contextPath}/doregister" method="post">
                                <input type="hidden" name="client" value="学生">
                                <div class="form-group">
                                    <label for="susr">学生名字</label>
                                    <input type="text" class="form-control" id="susr" placeholder="请输入学生名字" name="name">
                                </div>
                                <div class="form-group">
                                    <label for="spwd">密码：</label>
                                    <input type="password" class="form-control" id="spwd" placeholder="请输入密码" name="password">
                                </div>
                                <div class="form-group">
                                    <label for="spwd2">确认密码</label>
                                    <input type="password" class="form-control" id="spwd2" placeholder="请再次输入密码" name="password1">
                                </div>
                                <button type="submit" class="btn btn-primary" style="margin: 0 auto; display: block">注册</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="alert" style="display: none">
            <p>${requestScope.message}</p>
            <c:if test="${requestScope.tno !=null}">
                教师号为：${requestScope.tno}<br/>
            </c:if>
            <c:if test="${requestScope.sno !=null}">
                学生号为：${requestScope.sno}<br/>
            </c:if>
            <br/><button type="button" class="btn btn-primary" onclick="closeAlert()">确认</button>
        </div>
	</body>
</html>