<%@ page contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>로그인</title>

<!-- Bootstrap Core CSS -->
<link
	href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Theme CSS -->
<link
	href="${pageContext.request.contextPath}/css/freelancer.css?ver=15"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css?ver=5"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">

	<!-- Navigation -->
	<nav id="mainNav"
		class="navbar navbar-default navbar-fixed-top navbar-custom">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> Menu <i
						class="fa fa-bars"></i>
				</button>

				<a class="navbar-brand" href="${pageContext.request.contextPath}">이력서
					플랫폼</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li class="hidden"><a href="#page-top"></a></li>

					<!-- 이력서 리스트 -->
					<c:url value="/resume/resumelist.do" var="resumeListUrl" />
					<li class="page-scroll"><a href="${resumeListUrl}">ResumeList</a></li>

					<!-- 이력서 샘플 -->
					<c:url value="/resume/sample.do" var="samplePortfolUrl" />
					<li class="page-scroll"><a href="${samplePortfolUrl}">샘플
							이력서</a></li>

					<!-- 내 이력서  -->
					<c:url value="/resume/myresume.do" var="myresumeUrl" />
					<li class="page-scroll"><a href="${myresumeUrl}">내 이력서</a></li>

					<!-- 로그아웃 -->
					<c:if test="${id ne null}">
						<c:url value="/member/logout.do" var="logOutUrl" />
						<li class="page-scroll"><a href="${logOutUrl}">Logout</a></li>
					</c:if>
					<!-- 홈으로 -->
					<li class="page-scroll"><a
						href="${pageContext.request.contextPath}">홈으로</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- Header -->
	<header>
		<div class="container">
			<div>
				<form action='login.do' method=post>
		<input type="text" name="memberId" id="id" placeholder="아이디를 입력하세요.">
		<input type="password" name="password" id="password" placeholder="비밀번호를 입력하세요."> 
		<input type="submit" value="로그인">
	</form>
			</div>
	</header>

	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

	<!-- Contact Form JavaScript -->
	<script
		src="${pageContext.request.contextPath}/js/jqBootstrapValidation.js"></script>
	<script src="${pageContext.request.contextPath}/js/contact_me.js"></script>

	<!-- Theme JavaScript -->
	<script src="${pageContext.request.contextPath}/js/freelancer.min.js"></script>

</body>
</html>