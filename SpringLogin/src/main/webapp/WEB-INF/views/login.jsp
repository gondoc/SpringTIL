<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SpringLogin</title>
<%-- 부트스트랩을 사용하기 위한 준비 시작 --%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/styles.css" />
<%-- 부트스트랩을 사용하기 위한 준비 끝 --%>

</head>
<body class="container" id="page-top">

	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg bg-success text-uppercase fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="Main.jsp">SGAProject</a>
			<button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	<header class="masthead bg-success bg-opacity-25 text-dark text-center">
		<div class="container d-flex align-items-center flex-column">
			<div class="jumbotron" style="font-weight: bold">
				<h1 style="text-align: center">login</h1>
			</div>
<!-- 			로그인 실패 시 경고: https://getbootstrap.com/docs/4.1/components/alerts/#dismissing -->
			<%
  				if (request.getParameter("error") != null) { 
			%> 
			<div class="alert alert-warning alert-dismissible fade show" role="alert" style="text-align: center">
				<strong>로그인 에러!</strong> 아이디 또는 비밀번호가 일치하지 않습니다.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<%
				}
 			%>
<!-- 			로그인 폼: https://getbootstrap.com/docs/4.1/components/forms/ -->
			<form action="loginOk.jsp" method="post">
				<div class="form-group">
					<label>아이디</label>
					<input name="userid" type="text" class="form-control"/>
				</div>
				<br>
				<div class="form-group">
					<label>비밀번호</label>
					<input name="password" type="password" class="form-control" />
				</div>
				<br>
				<div class="d-grid gap-2 col-6 mx-auto">
					<button type="submit" class="btn btn-success">로그인하기</button>
				</div>
				<br>
				<div style="text-align: center;">
					<a href="welcomeForm.jsp">회원가입</a>
					<a href="findIDForm.jsp">아이디 찾기</a>
					<a href="findpasswordForm.jsp">비밀번호 찾기</a>
				</div>
			</form>
			<br />
			</div>
			</header>
</body>
</html>