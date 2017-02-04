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

<body id="page-top" class="index">

    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#page-top">이력서 플랫폼</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <!-- 회원 가입 -->
                    <c:if test="${id eq null}">
	                    <li class="page-scroll">
	                   		<c:url value="/member/join.do" var="joinUrl"/>
	                        <a href="${joinUrl}">Sign In</a>
	                    </li>
                    </c:if>
                    
           			<!-- 로그인 페이지 -->
           			<c:if test="${id eq null}">
	                    <li class="page-scroll">
	                    	<c:url value="/member/login.do" var="loginUrl"/>
	                        <a href="${loginUrl}">Log In</a>
	                    </li>
                   	</c:if>
                    <!-- 이력서 리스트 -->
                    <c:url value="/resume/resumelist.do" var="resumeListUrl"/>
                    <li class="page-scroll">
                        <a href="${resumeListUrl}">Resume List</a>
                    </li>
                    
                    <!-- 이력서 샘플 -->
                   <c:url value="/resume/sample.do" var="samplePortfolUrl"/>
                   <li class="page-scroll">
					<a href="${samplePortfolUrl}">샘플 이력서</a>
                   </li>
                   
                   <!-- 내 이력서  -->
                   <c:url value="/resume/myresume.do" var="myresumeUrl"/>
                   <li class="page-scroll">
					<a href="${myresumeUrl}">내 이력서</a>
                   </li>
                    <!-- 로그아웃 -->
                    <c:if test="${id ne null}">
						<c:url value="/member/logout.do" var="logOutUrl" />
						<li class="page-scroll">
						<a href="${logOutUrl}">Logout</a>
						</li>
					</c:if>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <!-- Header -->
    <header>
    	<div class="container">
    		${id}
		</div>
    </header>

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/freelancer.min.js"></script>

</body>
</html>