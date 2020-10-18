<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>班级管理</title>

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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/manager.css">
	</head>
	<body>
        <!-- 导航栏 -->
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <a class="navbar-brand" href="https://www.gduf.edu.cn/" target="_blank"><img src="${pageContext.request.contextPath}/img/gduf.jpg" style="width:50px; height:50px; border-radius:50%"></a>
            <ul class="navbar-nav">
                <li class="nav-item"><a class="navbar-brand" href="https://www.gduf.edu.cn/" target="_blank">GDUF</a></li>
                <li class="nav-item"><a class="navbar-brand" href="${pageContext.request.contextPath}/thome">主页</a></li>
                <li class="nav-item"><a class="navbar-brand" href="${pageContext.request.contextPath}/getTeacher">个人中心</a></li>
                <li class="nav-item dropdown">
                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">班级管理</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/toAddCourse">开设课程</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/showcourses">课程管理</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="body-wrap">
            <div class="content" style="width:1200px">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active"><a href="#" onclick="javascript:history.back(-1);">返回</a></li>
                    <li class="breadcrumb-item active"><a href="#">${requestScope.course.c_name}</a></li>
                </ol>
                <form action="${pageContext.request.contextPath}/deleteStudent?cno=${requestScope.course.c_no}" method="post">
                    <table>
                        <th>学号</th><th>姓名</th><th>性别</th><th>年级</th><th>清退</th>
                        <c:forEach items="${sessionScope.students}" var="student">
                            <tr>
                                <td>${student.s_no}</td>
                                <td>${student.s_name}</td>
                                <td>${student.s_sex}</td>
                                <td>${student.s_grade}</td>
                                <td><input type="checkbox" name="sno" value="${student.s_no}"></td>
                            </tr>
                        </c:forEach>
                        <tr>
                            <td colspan="5"><button type="submit" class="btn btn-primary">删除学生</button></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
	</body>
</html>