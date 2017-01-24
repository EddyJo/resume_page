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
<link
	href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Theme CSS -->
<link
	href="${pageContext.request.contextPath}/css/freelancer.css?ver=11"
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
	<form action='<c:url value="updateForm.do"/>' method=post>
		<div>
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
						<input class="navbar-brand input-title" type="text"
							name="resumeTitle" id="id" value="${resume.getResumeTitle()}"">
					</div>


					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li class="hidden"><a href="#page-top"></a></li>
							<li class="page-scroll"><a href="#portfolio">Portfolio</a></li>
							<li class="page-scroll"><a href="#about">About</a></li>
							<li class="page-scroll"><a href="#contact">Contact</a></li>
							<li><input type="submit" value="저장"></li>
							<li><input type="reset" value="취소"></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>

			<!-- Header -->
			<header>
				<div class="container">
					<img class="imgg"
						src="${pageContext.request.contextPath}${resume.getProfileImgPath()}"
						alt="">
					<div class="info">
						<h1 class="myname">
							<input type="text" name="userName" id="userName"
								value="${resume.getUserName()}">
						</h1>
						<div class="job">
							<input type="text" name="job1" id="job1"
								value="${resume.getJob1()}">,
							<input type="text" name="job2" id="job2"
								value="${resume.getJob2()}">,
							<input type="text" name="job3" id="job3"
								value="${resume.getJob3()}">
						</div>
						<hr>
						<div class="label">AGE</div>
						<div class='detail'><input type="text" name="age" id="age"
								value="${resume.getAge()}"></div>
						<br>
						<div class="label">Phone</div>
						<div class='detail'><input type="text" name="phone" id="phone"
								value="${resume.getPhone()}"></div>
						<br>
						<div class="label">Email</div>
						<div class='detail'><input type="text" name="email" id="email"
								value="${resume.getEmail()}"></div>
						<br>
						<div class="label">Address</div>
						<div class='detail'><input type="text" name="address" id="address"
								value="${resume.getAddress()}"></div>
					</div>
					<div class="links">
						<ul class="list-inline">
							<li><a
								href="<c:url value='http://${resume.getLinkedinUrl()}'/>"
								class="btn-social-info btn-outline-info"> <i
									class="fa fa-fw fa-linkedin"></i>
							</a></li>
							<li><a
								href="<c:url value='http://${resume.getGithubUrl()}'/>"
								class="btn-social-info btn-outline-info"> <i
									class="fa fa-fw fa-github"></i>
							</a></li>
							<li><a href="http://${resume.getBlogUrl()}"
								class="btn-social-info btn-outline-info"> <i
									class="fa fa-fw fa-blog"></i>
							</a></li>
						</ul>
						<input type="text" name="linkedinUrl" id="linkedinUrl"
								value="${resume.getLinkedinUrl()}">
					<input type="text" name="githubUrl" id="githubUrl"
								value="${resume.getGithubUrl()}">
					<input type="text" name="blogUrl" id="blogUrl"
								value="${resume.getBlogUrl()}">
					</div>
					
				</div>
			</header>

			<!-- training -->
			<section class="success" id="about">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 text-center">
							<h2>
								Skills
								<h2>
									<hr class=line>
						</div>
						<div class=skill-col-1>
							<div class=skill-set>
								<div class=skill>
									<p>
										<span class=skill-item>${resume.getSkill1()}</span> <span
											class=skill-value>${resume.getSkill1Score()}%</span>
									</p>
								</div>
								<div>
									<div class=progress>
										<div class="progress-bar" role="progressbar"
											aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
											style="width: ${resume.getSkill1Score()}%;"></div>
									</div>
								</div>
							</div>
							<div class=skill-set>
								<div class=skill>
									<p>
										<span class=skill-item>${resume.getSkill2()}</span> <span
											class=skill-value>${resume.getSkill2Score()}%</span>
									</p>
								</div>
								<div>
									<div class=progress>
										<div class="progress-bar" role="progressbar"
											aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
											style="width: ${resume.getSkill2Score()}%;"></div>
									</div>
								</div>
							</div>
							<div class=skill-set>
								<div class=skill>
									<p>
										<span class=skill-item>${resume.getSkill3()}</span> <span
											class=skill-value>${resume.getSkill3Score()}%</span>
									</p>
								</div>
								<div>
									<div class=progress>
										<div class="progress-bar" role="progressbar"
											aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
											style="width: ${resume.getSkill3Score()}%;"></div>
									</div>
								</div>
							</div>
							<div class=skill-set>
								<div class=skill>
									<p>
										<span class=skill-item>${resume.getSkill4()}</span> <span
											class=skill-value>${resume.getSkill4Score()}%</span>
									</p>
								</div>
								<div>
									<div class=progress>
										<div class="progress-bar" role="progressbar"
											aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
											style="width: ${resume.getSkill4Score()}%;"></div>
									</div>
								</div>
							</div>
						</div>
						<div class=skill-col-2>
							<div class=skill-set>
								<div class=skill>
									<p>
										<span class=skill-item>${resume.getSkill5()}</span> <span
											class=skill-value>${resume.getSkill5Score()}%</span>
									</p>
								</div>
								<div>
									<div class=progress>
										<div class="progress-bar" role="progressbar"
											aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
											style="width: ${resume.getSkill5Score()}%;"></div>
									</div>
								</div>
							</div>
							<div class=skill-set>
								<div class=skill>
									<p>
										<span class=skill-item>${resume.getSkill6()}</span> <span
											class=skill-value>${resume.getSkill6Score()}%</span>
									</p>
								</div>
								<div>
									<div class=progress>
										<div class="progress-bar" role="progressbar"
											aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
											style="width: ${resume.getSkill6Score()}%;"></div>
									</div>
								</div>
							</div>
							<div class=skill-set>
								<div class=skill>
									<p>
										<span class=skill-item>${resume.getSkill7()}</span> <span
											class=skill-value>${resume.getSkill7Score()}%</span>
									</p>
								</div>
								<div>
									<div class=progress>
										<div class="progress-bar" role="progressbar"
											aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
											style="width: ${resume.getSkill7Score()}%;"></div>
									</div>
								</div>
							</div>
							<div class=skill-set>
								<div class=skill>
									<p>
										<span class=skill-item>${resume.getSkill8()}</span> <span
											class=skill-value>${resume.getSkill8Score()}%</span>
									</p>
								</div>
								<div>
									<div class=progress>
										<div class="progress-bar" role="progressbar"
											aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
											style="width: ${resume.getSkill8Score()}%;"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row"></div>
				</div>
			</section>

			<!-- Portfolio Grid Section -->
			<section id="portfolio">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 text-center">
							<h2>Portfolio</h2>
							<hr class=line>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-4 portfolio-item">
							<a href="#portfolioModal1" class="portfolio-link"
								data-toggle="modal">
								<div class="caption">
									<div class="caption-content">
										<i class="fa fa-search-plus fa-3x"></i>
									</div>
								</div> <img
								src="${pageContext.request.contextPath}${resume.getPortfolio1ImgPath()}"
								class="img-responsive" alt="" width=900 height=650>
							</a>
						</div>
						<div class="col-sm-4 portfolio-item">
							<a href="#portfolioModal2" class="portfolio-link"
								data-toggle="modal">
								<div class="caption">
									<div class="caption-content">
										<i class="fa fa-search-plus fa-3x"></i>
									</div>
								</div> <img
								src="${pageContext.request.contextPath}${resume.getPortfolio2ImgPath()}"
								class="img-responsive" alt="" width=900 height=650>
							</a>
						</div>
						<div class="col-sm-4 portfolio-item">
							<a href="#portfolioModal3" class="portfolio-link"
								data-toggle="modal">
								<div class="caption">
									<div class="caption-content">
										<i class="fa fa-search-plus fa-3x"></i>
									</div>
								</div> <img
								src="${pageContext.request.contextPath}${resume.getPortfolio3ImgPath()}"
								class="img-responsive" alt="" width=900 height=650>
							</a>
						</div>
						<div class="col-sm-4 portfolio-item">
							<a href="#portfolioModal4" class="portfolio-link"
								data-toggle="modal">
								<div class="caption">
									<div class="caption-content">
										<i class="fa fa-search-plus fa-3x"></i>
									</div>
								</div> <img
								src="${pageContext.request.contextPath}${resume.getPortfolio4ImgPath()}"
								class="img-responsive" alt="" width=900 height=650>
							</a>
						</div>
						<div class="col-sm-4 portfolio-item">
							<a href="#portfolioModal5" class="portfolio-link"
								data-toggle="modal">
								<div class="caption">
									<div class="caption-content">
										<i class="fa fa-search-plus fa-3x"></i>
									</div>
								</div> <img
								src="${pageContext.request.contextPath}${resume.getPortfolio5ImgPath()}"
								class="img-responsive" alt="" width=900 height=650>
							</a>
						</div>
						<div class="col-sm-4 portfolio-item">
							<a href="#portfolioModal6" class="portfolio-link"
								data-toggle="modal">
								<div class="caption">
									<div class="caption-content">
										<i class="fa fa-search-plus fa-3x"></i>
									</div>
								</div> <img
								src="${pageContext.request.contextPath}${resume.getPortfolio6ImgPath()}"
								class="img-responsive" alt="" width=900 height=650>
							</a>
						</div>
					</div>
				</div>
			</section>

			<!-- About Section -->
			<section class="success" id="about">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 text-center">
							<h2>About</h2>
							<hr class=line>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-4 col-lg-offset-2">
							<p>안녕하십니까? 데이터 분석역량과 개발역량을 갖춘 인재, 조경현입니다. 사용 가능 언어와 기슬로는
								Java, Jsp, Spring, Mybatis, Python, Linux, R, HTML, Javascript,
								css, JQuery, BootStrap 등이 있습니다.</p>
						</div>
						<div class="col-lg-4">
							<p>백엔드 개발자로 취업을 희망 중이고, 어떤 언어로 개발을 진행하던지 상관없습니다. 개발 분야에서는 기술
								트렌드를 받아 들이는 것이 중요합니다. 최신 기술 트렌드를 익히기 좋아하고 끊임없이 익혀나가고자 합니다. 저에게
								관심있으시면 연락주세요.</p>
						</div>
						<div class="col-lg-8 col-lg-offset-2 text-center">
							<c:url value="/download/resume.do" var="downurl" />
							<a href="${downurl}" class="btn btn-lg btn-outline-info"> <i
								class="fa fa-download"></i> Download Resume
							</a>
						</div>
					</div>
				</div>
			</section>

			<!-- Contact Section -->


			<!-- Footer -->
			<footer class="text-center">
				<div class="footer-above">
					<div class="container">
						<div class="row">
							<div class="footer-col col-md-4">
								<h3>Location</h3>
								<p>
									서울특별시 동대문구 <br>휘경로 3길 52-12 102호
								</p>
							</div>
							<div class="footer-col col-md-4">
								<h3>Around the Web</h3>
								<ul class="list-inline">
									<li><a href="#" class="btn-social btn-outline"><i
											class="fa fa-fw fa-facebook"></i></a></li>
									<li><a href="#" class="btn-social btn-outline"><i
											class="fa fa-fw fa-google-plus"></i></a></li>
									<li><a href="#" class="btn-social btn-outline"><i
											class="fa fa-fw fa-twitter"></i></a></li>
									<li><a href="#" class="btn-social btn-outline"><i
											class="fa fa-fw fa-linkedin"></i></a></li>
									<li><a href="#" class="btn-social btn-outline"><i
											class="fa fa-fw fa-dribbble"></i></a></li>
								</ul>
							</div>
							<div class="footer-col col-md-4">
								<h3>About Eddy</h3>
								<p></p>
							</div>
						</div>
					</div>
				</div>
				<div class="footer-below">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">Copyright &copy; Eddy Jo 2016</div>
						</div>
					</div>
				</div>
			</footer>

			<!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
			<div
				class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">
				<a class="btn btn-primary" href="#page-top"> <i
					class="fa fa-chevron-up"></i>
				</a>
			</div>

			<!-- Portfolio Modals -->
			<div class="portfolio-modal modal fade" id="portfolioModal1"
				tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-content">
					<div class="close-modal" data-dismiss="modal">
						<div class="lr">
							<div class="rl"></div>
						</div>
					</div>
					<div class="container">
						<div class="row">
							<div class="col-lg-8 col-lg-offset-2">
								<div class="modal-body">
									<h2>${resume.getPortfolio1Title()}</h2>
									<hr class="line">
									<img
										src="${pageContext.request.contextPath}${resume.getPortfolio1ImgPath()}"
										class="img-responsive img-centered" alt="">
									<p class=portfolio-info>${resume.getPortfolio1Info()}
										<br> <br> ${resume.getPortfolio1SubTitle1()}: <a>${resume.getPortfolio1SubTitle1Content()}</a>
										<br> ${resume.getPortfolio1SubTitle2()}: <a>${resume.getPortfolio1SubTitle2Content()}</a>
										<br> ${resume.getPortfolio1SubTitle3()}: <a>${resume.getPortfolio1SubTitle3Content()}</a>
									</p>
									<ul class="list-inline item-details">
										<li>Client:<a>${resume.getPortfolio1Client()}</a>
										</li>
										<li>Date: <a>${resume.getPortfolio1Date()}</a>
										</li>
										<li>Service: <a>${resume.getPortfolio1Service()}</a>
										</li>

									</ul>
									<button type="button" class="btn btn-default"
										data-dismiss="modal">
										<i class="fa fa-times"></i> Close
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="portfolio-modal modal fade" id="portfolioModal2"
				tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-content">
					<div class="close-modal" data-dismiss="modal">
						<div class="lr">
							<div class="rl"></div>
						</div>
					</div>
					<div class="container">
						<div class="row">
							<div class="col-lg-8 col-lg-offset-2">
								<div class="modal-body">
									<h2>${resume.getPortfolio2Title()}</h2>
									<hr class="line">
									<img
										src="${pageContext.request.contextPath}${resume.getPortfolio2ImgPath()}"
										class="img-responsive img-centered" alt="">
									<p class=portfolio-info>
										${resume.getPortfolio2Info()} <br> <br>
										${resume.getPortfolio2SubTitle1()}: <a>${resume.getPortfolio2SubTitle1Content()}</a>
										<br> ${resume.getPortfolio2SubTitle2()}: <a>${resume.getPortfolio2SubTitle2Content()}</a>
										<br> ${resume.getPortfolio2SubTitle3()}: <a>${resume.getPortfolio2SubTitle3Content()}</a>
									</p>
									<ul class="list-inline item-details">
										<li>Client:<a>${resume.getPortfolio2Client()}</a>
										</li>
										<li>Date: <a>${resume.getPortfolio2Date()}</a>
										</li>
										<li>Service: <a>${resume.getPortfolio2Service()}</a>
										</li>

									</ul>
									<button type="button" class="btn btn-default"
										data-dismiss="modal">
										<i class="fa fa-times"></i> Close
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="portfolio-modal modal fade" id="portfolioModal3"
				tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-content">
					<div class="close-modal" data-dismiss="modal">
						<div class="lr">
							<div class="rl"></div>
						</div>
					</div>
					<div class="container">
						<div class="row">
							<div class="col-lg-8 col-lg-offset-2">
								<div class="modal-body">
									<h2>${resume.getPortfolio3Title()}</h2>
									<hr class="line">
									<img
										src="${pageContext.request.contextPath}${resume.getPortfolio3ImgPath()}"
										class="img-responsive img-centered" alt="">
									<p class=portfolio-info>
										${resume.getPortfolio3Info()} <br> <br>
										${resume.getPortfolio3SubTitle1()}: <a>${resume.getPortfolio3SubTitle1Content()}</a>
										<br> ${resume.getPortfolio3SubTitle2()}: <a>${resume.getPortfolio3SubTitle2Content()}</a>
										<br> ${resume.getPortfolio3SubTitle3()}: <a>${resume.getPortfolio3SubTitle3Content()}</a>
									</p>
									<ul class="list-inline item-details">
										<li>Client: <strong><a>${resume.getPortfolio3Client()}</a>
										</strong>
										</li>
										<li>Date: <strong><a>${resume.getPortfolio3Date()}</a>
										</strong>
										</li>
										<li>Service: <strong><a>${resume.getPortfolio3Service()}</a>
										</strong>
										</li>
									</ul>
									<button type="button" class="btn btn-default"
										data-dismiss="modal">
										<i class="fa fa-times"></i> Close
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="portfolio-modal modal fade" id="portfolioModal4"
				tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-content">
					<div class="close-modal" data-dismiss="modal">
						<div class="lr">
							<div class="rl"></div>
						</div>
					</div>
					<div class="container">
						<div class="row">
							<div class="col-lg-8 col-lg-offset-2">
								<div class="modal-body">
									<h2>${resume.getPortfolio4Title()}</h2>
									<hr class="line">
									<img
										src="${pageContext.request.contextPath}${resume.getPortfolio4ImgPath()}"
										class="img-responsive img-centered" alt="">
									<p class=portfolio-info>
										${resume.getPortfolio4Info()} <br> <br>
										${resume.getPortfolio4SubTitle1()}: <a>${resume.getPortfolio4SubTitle1Content()}</a>
										<br> ${resume.getPortfolio4SubTitle2()}: <a>${resume.getPortfolio4SubTitle2Content()}</a>
										<br> ${resume.getPortfolio4SubTitle3()}: <a>${resume.getPortfolio4SubTitle3Content()}</a>
									</p>
									<ul class="list-inline item-details">
										<li>Client: <a>${resume.getPortfolio4Client()}</a>
										</li>
										<li>Date: <a>${resume.getPortfolio4Date()}</a>
										</li>
										<li>Service: <a>${resume.getPortfolio4Service()}</a>
										</li>
									</ul>
									<button type="button" class="btn btn-default"
										data-dismiss="modal">
										<i class="fa fa-times"></i> Close
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="portfolio-modal modal fade" id="portfolioModal5"
				tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-content">
					<div class="close-modal" data-dismiss="modal">
						<div class="lr">
							<div class="rl"></div>
						</div>
					</div>
					<div class="container">
						<div class="row">
							<div class="col-lg-8 col-lg-offset-2">
								<div class="modal-body">
									<h2>${resume.getPortfolio5Title()}</h2>
									<hr class="line">
									<img
										src="${pageContext.request.contextPath}${resume.getPortfolio5ImgPath()}"
										class="img-responsive img-centered" alt="">
									<p class=portfolio-info>
										${resume.getPortfolio5Info()} <br> <br>
										${resume.getPortfolio5SubTitle1()}: <a>${resume.getPortfolio5SubTitle1Content()}</a>
										<br> ${resume.getPortfolio5SubTitle2()}: <a>${resume.getPortfolio5SubTitle2Content()}</a>
										<br> ${resume.getPortfolio5SubTitle3()}: <a>${resume.getPortfolio5SubTitle3Content()}</a>
									</p>
									<ul class="list-inline item-details">
										<li>Client: <a>${resume.getPortfolio5Client()}</a>
										</li>
										<li>Date: <a>${resume.getPortfolio5Date()}</a>
										</li>
										<li>Service: <a>${resume.getPortfolio5Service()}</a>
										</li>
									</ul>
									<button type="button" class="btn btn-default"
										data-dismiss="modal">
										<i class="fa fa-times"></i> Close
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="portfolio-modal modal fade" id="portfolioModal6"
				tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-content">
					<div class="close-modal" data-dismiss="modal">
						<div class="lr">
							<div class="rl"></div>
						</div>
					</div>
					<div class="container">
						<div class="row">
							<div class="col-lg-8 col-lg-offset-2">
								<div class="modal-body">
									<h2>${resume.getPortfolio6Title()}</h2>
									<hr class="line">
									<img
										src="${pageContext.request.contextPath}${resume.getPortfolio6ImgPath()}"
										class="img-responsive img-centered" alt="" width=900
										height=650>
									<p class=portfolio-info>
										${resume.getPortfolio6Info()} <br> <br>
										${resume.getPortfolio6SubTitle1()}: <a>${resume.getPortfolio6SubTitle1Content()}</a>
										<br> ${resume.getPortfolio6SubTitle2()}: <a>${resume.getPortfolio6SubTitle2Content()}</a>
										<br> ${resume.getPortfolio6SubTitle3()}: <a>${resume.getPortfolio6SubTitle3Content()}</a>
									</p>
									<ul class="list-inline item-details">
										<li>Client: <a>${resume.getPortfolio6Client()}</a>
										</li>
										<li>Date: <a>${resume.getPortfolio6Date()}</a>
										</li>
										<li>Service: <a>${resume.getPortfolio6Service()}</a>
										</li>
									</ul>
									   <button type="button" class="btn btn-default"
										data-dismiss="modal">
										<i class="fa fa-times"></i> Close
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</form>

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