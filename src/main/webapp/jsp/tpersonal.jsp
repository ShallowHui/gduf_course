<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="teacher" value="${sessionScope.teacher}" scope="page"></c:set>
<!DOCTYPE html>
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
        <script defer="defer" id="ribbon_piao" mobile="true" src="${pageContext.request.contextPath}/js/caidai.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/backgroundcolor.css">
	</head>
	<body>
        <!-- 导航栏 -->
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <a class="navbar-brand" href="https://www.gduf.edu.cn/" target="_blank"><img src="${pageContext.request.contextPath}/img/gduf.jpg" style="width:50px; height:50px; border-radius:50%"></a>
            <ul class="navbar-nav">
                <li class="nav-item"><a class="navbar-brand" href="https://www.gduf.edu.cn/" target="_blank">GDUF</a></li>
				<li class="nav-item"><a class="navbar-brand" href="${pageContext.request.contextPath}/thome">主页</a></li>
            </ul>
        </nav>
        <div id="body-wrap">    
        	<div class="content">
				<ol class="breadcrumb">
					<li class="breadcrumb-item active"><a href="#" onclick="javascript:history.back(-1);">返回</a></li>
				</ol>
            	<table class="table table-hover table-info table-bordered" style="text-align:center; width:400px; margin: 0 auto">
            		<tbody>
            			<tr>
            				<td colspan="2"><img src="${pageContext.request.contextPath}/img/gduf.jpg" style="width:100px; height:100px; border-radius:50%"></td>
            			</tr>
            			<tr>
            				<td>姓名：</td>
            				<td>${teacher.t_name}</td>
            			</tr>
            			<tr>
            				<td>教师号：</td>
            				<td>${teacher.t_no}</td>
            			</tr>
            			<tr>
            				<td>教师办公室：</td>
            				<td>${teacher.t_office}</td>
            			</tr>
            			<tr>
            				<td>电话：</td>
            				<td>${teacher.t_phone}</td>
            			</tr>
            			<tr>
            				<td>院系：</td>
            				<td>${teacher.depart}</td>
            			</tr>
            		</tbody>
            	</table>
            </div>
        </div>
	</body>
</html>