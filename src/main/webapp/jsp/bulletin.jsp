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
                height: 90px;
                display: block;
                text-align: center;
                line-height: 90px;
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
                            <a class="nav-link active" data-toggle="tab" href="#teacher">教师公告</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#student">学生公告</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#all">全体公告</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="teacher" class="container tab-pane active"><br>
                            <form action="${pageContext.request.contextPath}/addBulletin" method="post">
                                <input type="hidden" name="flag" value="1">
                                <div class="form-group">
                                    <label for="bname1">公告标题：</label>
                                    <input type="text" class="form-control" id="bname1" name="Bname">
                                </div>
                                <div class="form-group">
                                    <label for="bm1">公告内容：</label>
                                    <input type="text" class="form-control" id="bm1" name="memo">
                                </div>
                                <button type="submit" class="btn btn-primary" style="margin: 0 auto; display: block">发布</button>
                            </form>
                        </div>
                        <div id="student" class="container tab-pane"><br>
                            <form action="${pageContext.request.contextPath}/addBulletin" method="post">
                                <input type="hidden" name="flag" value="2">
                                <div class="form-group">
                                    <label for="bname2">公告标题：</label>
                                    <input type="text" class="form-control" id="bname2" name="Bname">
                                </div>
                                <div class="form-group">
                                    <label for="bm2">公告内容：</label>
                                    <input type="text" class="form-control" id="bm2" name="memo">
                                </div>
                                <button type="submit" class="btn btn-primary" style="margin: 0 auto; display: block">发布</button>
                            </form>
                        </div>
                        <div id="all" class="container tab-pane"><br>
                            <form action="${pageContext.request.contextPath}/addBulletin" method="post">
                                <input type="hidden" name="flag" value="0">
                                <div class="form-group">
                                    <label for="bname0">公告标题：</label>
                                    <input type="text" class="form-control" id="bname0" name="Bname">
                                </div>
                                <div class="form-group">
                                    <label for="bm0">公告内容：</label>
                                    <input type="text" class="form-control" id="bm0" name="memo">
                                </div>
                                <button type="submit" class="btn btn-primary" style="margin: 0 auto; display: block">发布</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="alert" style="display: none">
            <p>${requestScope.message}</p>
            <button type="button" class="btn btn-primary" onclick="closeAlert()">确认</button>
        </div>
	</body>
</html>