<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="student" value="${sessionScope.student}" scope="page"></c:set>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>个人中心</title>

        <!-- 新 Bootstrap4 核心 CSS 文件 -->
        <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
        <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
        <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
        <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
        <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
        <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
        <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <script src="${pageContext.request.contextPath}/js/main.js"></script>
        <script defer="defer" id="ribbon_piao" mobile="true" src="${pageContext.request.contextPath}/js/caidai.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/backgroundcolor.css">
	</head>
	<body>
        <!-- 导航栏 -->
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <a class="navbar-brand" href="https://www.gduf.edu.cn/" target="_blank"><img src="${pageContext.request.contextPath}/img/gduf.jpg" style="width:50px; height:50px; border-radius:50%"></a>
            <ul class="navbar-nav">
                <li class="nav-item"><a class="navbar-brand" href="https://www.gduf.edu.cn/" target="_blank">GDUF</a></li>
				<li class="nav-item"><a class="navbar-brand" href="${pageContext.request.contextPath}/shome">主页</a></li>
            </ul>
        </nav>
        <div id="body-wrap">    
        	<div class="content">
				<ol class="breadcrumb">
					<li class="breadcrumb-item active"><a href="#" onclick="javascript:history.back(-1);">返回</a></li>
				</ol>
            	<table class="table table-hover table-primary table-bordered" style="text-align:center; width:400px; margin: 0 auto">
            		<tbody>
            			<tr>
            				<td colspan="2"><img src="${pageContext.request.contextPath}/img/gduf.jpg" style="width:100px; height:100px; border-radius:50%"></td>
            			</tr>
            			<tr>
            				<td>姓名：</td>
            				<td>${student.s_name}</td>
            			</tr>
            			<tr>
            				<td>学号：</td>
            				<td>${student.s_no}</td>
            			</tr>
            			<tr>
            				<td>性别：</td>
            				<td>${student.s_sex}</td>
            			</tr>
            			<tr>
            				<td>生日：</td>
            				<td>${student.s_birthday}</td>
            			</tr>
            			<tr>
            				<td>年级：</td>
            				<td>${student.s_grade}</td>
            			</tr>
						<tr>
							<td>家庭住址：</td>
							<td>${student.s_address}</td>
						</tr>
						<tr>
							<td>手机号：</td>
							<td>${student.s_phone}</td>
						</tr>
						<tr>
							<td>邮箱：</td>
							<td>${student.s_email}</td>
						</tr>
            		</tbody>
            	</table>
            </div>
        </div>
	</body>
</html>