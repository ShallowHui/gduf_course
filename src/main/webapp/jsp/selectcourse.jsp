<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>选课中心</title>

        <!-- 新 Bootstrap4 核心 CSS 文件 -->
        <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
        <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
        <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
        <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
        <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
        <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
        <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <script src="${pageContext.request.contextPath}/js/main.js"></script>
        <script src="${pageContext.request.contextPath}/js/message.js"></script>
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
                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">选课中心</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/getCourses">我的课表</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="body-wrap">
            <div class="content" style="width:1200px">
                <form action="${pageContext.request.contextPath}/findCoursesLike" method="post">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="查询老师或者课程" name="name">
                    </div>
                    <button type="submit" class="btn btn-primary">搜索</button>
                </form>
                <c:if test="${sessionScope.PageList.courses.size() == 0}">
                    <div class="alert alert-warning">
                        <strong>抱歉！没有查询到信息。</strong>
                    </div>
                </c:if>
                <c:if test="${sessionScope.PageList.courses.size() != 0}">
                    <table>
                        <th>课程代码</th><th>课程名字</th><th>开课时间</th><th>上课时间</th><th>选课</th>
                        <c:forEach items="${sessionScope.PageList.courses}" var="course">
                            <tr>
                                <td>${course.c_no}</td>
                                <td data-toggle="tooltip" title="${course.c_comment}" data-placement="bottom"><a href="${pageContext.request.contextPath}/courseinfo?cno=${course.c_no}">${course.c_name}</a></td>
                                <td>${course.ac_time}</td>
                                <td>${course.hc_time}</td>
                                <td><button  style="margin-top: 0px" type="button" class="btn btn-primary" onclick="window.location.href='${pageContext.request.contextPath}/selectCourse?cno=${course.c_no}'">申请课程</button></td>
                            </tr>
                        </c:forEach>
                    </table>
                    <ul class="pagination">
                        <c:set var="currentpage" value="${sessionScope.PageList.currPage}"></c:set>
                        <c:set var="totalpage" value="${sessionScope.PageList.totalPage}"></c:set>
                        <c:if test="${currentpage == 1}">
                            <li class="page-item disabled"><a class="page-link">上一页</a></li>
                        </c:if>
                        <c:if test="${currentpage > 1}">
                            <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/courses?currentPage=${currentpage-1}">上一页</a></li>
                        </c:if>
                        <c:forEach begin="1" end="${totalpage}" var="page">
                            <c:if test="${page == currentpage}">
                                <li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath}/courses?currentPage=${page}">${page}</a></li>
                            </c:if>
                            <c:if test="${page != currentpage}">
                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/courses?currentPage=${page}">${page}</a></li>
                            </c:if>
                        </c:forEach>
                        <c:if test="${currentpage == totalpage}">
                            <li class="page-item disabled"><a class="page-link">下一页</a></li>
                        </c:if>
                        <c:if test="${currentpage < totalpage}">
                            <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/courses?currentPage=${currentpage+1}">下一页</a></li>
                        </c:if>
                    </ul>
                </c:if>
            </div>
        </div>
        <div id="alert" style="display: none">
            <p>${requestScope.message}</p>
            <button type="button" class="btn btn-primary" onclick="closeAlert()">确认</button>
        </div>
	</body>
</html>