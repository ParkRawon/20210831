<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<title>로그인</title>
<head>
	<title>Bootstrap Example</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<style>
		/* Remove the navbar's default margin-bottom and rounded borders */
		.navbar {
			margin-bottom: 0;
			border-radius: 0;
		}

		/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
		.row.content {
			height: 870px
		}

		/* Set gray background color and 100% height */
		.sidenav {
			padding-top: 20px;
			background-color: #f1f1f1;
			height: 100%;
		}

		/* Set black background color, white text and some padding */
		footer {
			background-color: #555;
			color: white;
			padding: 15px;
		}

		/* On small screens, set height to 'auto' for sidenav and grid */
		@media screen and (max-width: 767px) {
			.sidenav {
				height: auto;
				padding: 15px;
			}

			.row.content {
				height: auto;
			}
		}
	</style>
</head>

<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="main.do">HomePage</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="noticeList.do">Notice</a></li>
					<li><a href="#">Product</a></li>
				<c:if test="${auth eq 'ADMIN' }">
					<li><a href="#">Members</a></li>
				</c:if>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<c:if test="${empty id }">
						<li><a href="loginForm.do"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<p><a href="#">Link</a></p>
				<p><a href="#">Link</a></p>
				<p><a href="#">Link</a></p>
			</div>
		<div class="col-sm-10 text-left">
				<div align="center">
				<h1>Login Result</h1>				
					<h1>${message }</h1>
				<br/>
				<input type="button" onclick="location.href='main.do'" value="HOME">
				</div>
			</div>
		</div>
		</div>
	

	<footer class="container-fluid text-center">
		<p>@copy</p>
	</footer>

</body>

</html>