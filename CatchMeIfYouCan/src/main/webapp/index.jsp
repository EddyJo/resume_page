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

    <title>작업 중...</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="css/freelancer.css?ver=10" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css?ver=5" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<!-- 로그인 부분 -->
<div>
	<form action="<c:url value="/member/login.do"/>" method=post>
		<input type="text" name="memberId" id="id" placeholder="아이디를 입력하세요.">
		<input type="text" name="password" id="password" placeholder="비밀번호를 입력하세요."> 
		<input type="submit" value="로그인">
	</form>
</div>

<!-- 회원 리스트 -->
<div>
	<c:url value="/member/list.do" var="memberListUrl"/>
	<a href="${memberListUrl}">회원 리스트</a>
</div>

<!-- 회원 가입 -->
<div>
	<c:url value="/member/join.do" var="joinUrl"/>
	<a href="${joinUrl}">회원가입</a>
	${message}
</div>

<div>
	<c:url value="/portfolio/home.do" var="portfolHomeUrl"/>
	<a href="${portfolHomeUrl}">포트폴리오 page</a>

</div>

</body>
</html>