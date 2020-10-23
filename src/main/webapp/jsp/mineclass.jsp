<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>我的课表</title>

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
        <nav class="navbar navbar-expand-sm bg-light navbar-light">
            <a class="navbar-brand" href="https://www.gduf.edu.cn/" target="_blank"><img src="${pageContext.request.contextPath}/img/gduf.jpg" style="width:50px; height:50px; border-radius:50%"></a>
            <ul class="navbar-nav">
                <li class="nav-item"><a class="navbar-brand" href="https://www.gduf.edu.cn/" target="_blank">GDUF</a></li>
                <li class="nav-item"><a class="navbar-brand" href="${pageContext.request.contextPath}/shome">主页</a></li>
                <li class="nav-item"><a class="navbar-brand" href="${pageContext.request.contextPath}/getStudent">个人中心</a></li>
                <li class="nav-item dropdown">
                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">我的课表</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/courses">选课中心</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="body-wrap">
            <div class="content" style="width:1200px">
                <c:if test="${sessionScope.courses.size() == 0}">
                    <div class="alert alert-warning">
                        <strong>抱歉！没有查询到信息。</strong>
                    </div>
                </c:if>
                <c:if test="${sessionScope.courses.size() != 0}">
                    <form action="${pageContext.request.contextPath}/deleteCourse" method="post">
                        <table>
                            <th>课程代码</th><th>课程名字</th><th>开课时间</th><th>上课时间</th><th>退课</th>
                            <c:forEach items="${sessionScope.courses}" var="course">
                                <tr>
                                    <td>${course.c_no}</td>
                                    <td data-toggle="tooltip" title="${course.c_comment}" data-placement="bottom"><a href="#">${course.c_name}</a></td>
                                    <td>${course.ac_time}</td>
                                    <td>${course.hc_time}</td>
                                    <td><input type="checkbox" name="c_no" value="${course.c_no}"></td>
                                </tr>
                            </c:forEach>
                            <tr>
                                <td colspan="5"><button type="submit" class="btn btn-primary">退课</button></td>
                            </tr>
                        </table>
                    </form>
                </c:if>
            </div>
        </div>
	</body>
</html>