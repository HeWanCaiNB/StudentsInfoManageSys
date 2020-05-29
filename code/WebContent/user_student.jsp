<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<title>学生操作界面</title>
	<link rel="stylesheet" type="text/css" href="css/user&admin.css">
	<link rel="icon" type="image/x-ico" href="images/stu.ico">
	
</head>
	
<body>
	<%
		//获取登录成功的用户信息
		User user = (User) session.getAttribute("student");
		//判断用户是否登录
		if(user != null){
	%>
	<header>
		<div class="title">
			<span>学生操作界面</span>
		</div>
		<nav>
			<div class="userinfo">
				<ul>
					<li><%=user.getUsername() %></li>
					<li><%=user.getLevel() %></li>
					<li><a href="UserExitServlet">退出登录</a></li>
				</ul>
			</div>
		</nav>
	</header>
	
	<main>
		<%
		}else{
			response.sendRedirect("login.html");
		}
		%>
		<div class="container">
			<div class="select">
				<h3>请选择操作</h3>
				<ul id="accordion" class="accordion">
					<li>
						<div class="link">学生信息管理</div>
						<ul class="submenu">
							<li><a  onclick="query()">查看信息</a></li>
						</ul>
					</li>
					<li>
						<div class="link">课程信息管理</div>
						<ul class="submenu">
							<li><a onclick="query_mycourse()">查看我的课程</a></li>							 							
						</ul>
					</li>
					<li>
						<div class="link">学生成绩管理</div>
						<ul class="submenu">
							<li><a  onclick="query_grade()">查看成绩</a></li>
						</ul>
					</li>
				</ul>
				</div>

				<div id="result" class="result">
					<p class="welcome">欢迎使用学生信息管理系统！</p>
				</div>
			</div>
		</div>
	</main>
	

	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/student.js"></script>
</body>
</html>