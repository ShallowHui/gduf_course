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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/comment.css">
	</head>
	<body>
        <!-- 导航栏 -->
        <nav class="navbar navbar-expand-sm bg-light navbar-light">
            <a class="navbar-brand" href="https://www.gduf.edu.cn/" target="_blank"><img src="${pageContext.request.contextPath}/img/gduf.jpg" style="width:50px; height:50px; border-radius:50%"></a>
            <ul class="navbar-nav">
                <li class="nav-item"><a class="navbar-brand" href="https://www.gduf.edu.cn/" target="_blank">GDUF</a></li>
                <li class="nav-item"><a class="navbar-brand" href="${pageContext.request.contextPath}/shome">主页</a></li>
                <li class="nav-item"><a class="navbar-brand" href="${pageContext.request.contextPath}/getStudent">个人中心</a></li>
            </ul>
        </nav>
        <div id="body-wrap">
            <div class="content" style="width:1200px">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/getCourses">返回</a></li>
                </ol>
                <h1>${requestScope.course.t_name}老师的${requestScope.course.course.c_name}课程评论:</h1>
                <c:if test="${requestScope.PageList.comments.size() == 0}">
                    <div class="alert alert-warning">
                        <strong>还没有评论哦~快来发表评论</strong>
                    </div>
                </c:if>
                <c:if test="${requestScope.PageList.comments.size() != 0}">
                    <div class="comments">
                        <c:forEach items="${requestScope.PageList.comments}" var="comment">
                            <div class="comment"><b>${comment.s_no}</b>：${comment.comment}</div>
                        </c:forEach>
                        <ul class="pagination">
                            <c:set var="currentpage" value="${requestScope.PageList.currPage}"></c:set>
                            <c:set var="totalpage" value="${requestScope.PageList.totalPage}"></c:set>
                            <c:if test="${currentpage == 1}">
                                <li class="page-item disabled"><a class="page-link">上一页</a></li>
                            </c:if>
                            <c:if test="${currentpage > 1}">
                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/courseinfo?currentPage=${currentpage-1}&cno=${requestScope.course.course.c_no}">上一页</a></li>
                            </c:if>
                            <c:forEach begin="1" end="${totalpage}" var="page">
                                <c:if test="${page == currentpage}">
                                    <li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath}/courseinfo?currentPage=${page}&cno=${requestScope.course.course.c_no}">${page}</a></li>
                                </c:if>
                                <c:if test="${page != currentpage}">
                                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/courseinfo?currentPage=${page}&cno=${requestScope.course.course.c_no}">${page}</a></li>
                                </c:if>
                            </c:forEach>
                            <c:if test="${currentpage == totalpage}">
                                <li class="page-item disabled"><a class="page-link">下一页</a></li>
                            </c:if>
                            <c:if test="${currentpage < totalpage}">
                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/courseinfo?currentPage=${currentpage+1}&cno=${requestScope.course.course.c_no}">下一页</a></li>
                            </c:if>
                        </ul>
                    </div>
                </c:if>
                <form action="${pageContext.request.contextPath}/addcomment" method="post">
                    <div class="form-group">
                        <input type="hidden" name="s_no" value="${sessionScope.ID_SESSION.s_no}">
                        <input type="hidden" name="c_no" value="${requestScope.course.course.c_no}">
                        <textarea name="comment" class="form-control" placeholder="快来发表课程评论吧~"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">发表</button>
                </form>
            </div>
        </div>
	</body>
</html>