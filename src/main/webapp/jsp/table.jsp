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

        <script src="../js/main.js"></script>
        <script defer="defer" id="ribbon_piao" mobile="true" src="../js/caidai.js"></script>
        <link rel="stylesheet" href="../css/backgroundcolor.css">
	</head>
	<body>
        <!-- 导航栏 -->
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <a class="navbar-brand" href="https://www.gduf.edu.cn/" target="_blank"><img src="../img/gduf.jpg" style="width:50px; height:50px; border-radius:50%"></a>
            <ul class="navbar-nav">
                <li class="nav-item"><a class="navbar-brand" href="https://www.gduf.edu.cn/" target="_blank">GDUF</a></li>
                <li class="nav-item"><a class="navbar-brand" href="#">个人中心</a></li>
                <li class="nav-item dropdown">
                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">选课中心</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">我的课程</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="body-wrap">
            <div class="content">
                <form action="${pageContext.request.contextPath}/" method="post">
                    <table class="table table-hover table-primary" style="border-radius:20px; text-align:center; line-height:inherit">
                        <tbody>
                            <tr>
                                <td style="border-top: none">课程名称:</td>
                                <td style="border-top: none"><input type="text" class="form-control"></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <label for="comment">课程简介:</label>
                                    <textarea class="form-control" rows="5" id="comment"></textarea>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
	</body>
</html>