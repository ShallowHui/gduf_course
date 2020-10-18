<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/manager.css">
	</head>
	<body>
        <!-- 导航栏 -->
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <a class="navbar-brand" href="https://www.gduf.edu.cn/" target="_blank"><img src="${pageContext.request.contextPath}/img/gduf.jpg" style="width:50px; height:50px; border-radius:50%"></a>
            <ul class="navbar-nav">
                <li class="nav-item"><a class="navbar-brand" href="https://www.gduf.edu.cn/" target="_blank">GDUF</a></li>
                <li class="nav-item"><a class="navbar-brand" href="#">个人中心</a></li>
                <li class="nav-item dropdown">
                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">课程管理</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">开设课程</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="body-wrap">
            <div class="content" style="width:1200px">
                <nav class="breadcrumb">
					 <a class="breadcrumb-item" href="#">&lt;&lt;&nbsp;返回</a>
				</nav>
				<table>
					<th>课程代码</th><th>课程名字</th><th>开课时间</th><th>上课时间</th><th>查看班级</th>
					<tr>
						<td>GDUF</td>
						<td data-toggle="tooltip" title="Java EE" data-placement="bottom"><a href="#">GDUF</a></td>
						<td>GDUF</td>
						<td>GDUF</td>
						<td><a href="#">班级</a>
					</tr>
					<tr>
						<td>GDUF</td>
						<td>GDUF</td>
						<td>GDUF</td>
						<td>GDUF</td>
						<td><a href="#">班级</a>
					</tr>
					<tr>
						<td>GDUF</td>
						<td>GDUF</td>
						<td>GDUF</td>
						<td>GDUF</td>
						<td><a href="#">班级</a>
					</tr>
				</table>
            </div>
        </div>
	</body>
</html>