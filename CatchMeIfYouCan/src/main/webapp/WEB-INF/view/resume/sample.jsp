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
    <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="${pageContext.request.contextPath}/css/freelancer.css?ver=10" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css?ver=5" rel="stylesheet" type="text/css">
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
                <a class="navbar-brand" href="#page-top">data + developer</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#portfolio">Portfolio</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#about">About</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#contact">Contact</a>
                    </li>
                    <!-- 홈으로 -->
					<li class="page-scroll">
						<a href="${pageContext.request.contextPath}">홈으로</a>
					</li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
    	<div class="container">
     		<img class="imgg" src="${pageContext.request.contextPath}/img/profile.jpg" alt="">
     		<div class="info">
     			<h1 class="myname">조경현</h1>
     			<div class="job"> Webdeveloper, Programmer, Data Scientist</div>
     			<hr>
     			<div class="label">AGE</div>
     			<div class='detail'>27</div>
     			<br>
     			<div class="label">Phone</div>
     			<div class='detail'>010-3750-3109</div>
     			<br>
     			<div class="label">Email</div>
     			<div class='detail'>jkjk3307@naver.com</div>
     			<br>
     			<div class="label">Adress</div>
     			<div class='detail'>서울특별시 동대문구</div>
			</div>
     		<div class="links">
					<ul class="list-inline">
						<li><a
							href="https://www.linkedin.com/in/kyeong-hyeon-jo-b31961127?trk=nav_responsive_tab_profile"
							class="btn-social-info btn-outline-info"> <i
								class="fa fa-fw fa-linkedin"></i>
						</a></li>
						<li><a href="https://github.com/EddyJo"
							class="btn-social-info btn-outline-info"> <i class="fa fa-fw fa-github"></i>
						</a></li>
						<li><a href="http://eddyplusit.tistory.com/"
							class="btn-social-info btn-outline-info"> <i class="fa fa-fw fa-blog"></i>
						</a></li>
					</ul>
				</div>
     		
     	</div>
    </header>
    
    <!-- training -->
    <section class="success" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Skills<h2>
                    <hr class=line>
							
                </div>
                <div class=skill-col-1>
								<div class=skill-set>
									<div class=skill>
										<p>
											<span class=skill-item>Java</span> 
											<span class=skill-value>80%</span>
										</p>
									</div>
									<div>
										<div class=progress>
											<div class="progress-bar" role="progressbar"
												aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
												style="width: 80%;">
											</div>
										</div>
									</div>
								</div>
								<div class=skill-set>
									<div class=skill>
										<p>
											<span class=skill-item>Python</span> 
											<span class=skill-value>80%</span>
										</p>
									</div>
									<div>
										<div class=progress>
											<div class="progress-bar" role="progressbar"
												aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
												style="width: 80%;">
											</div>
										</div>
									</div>
								</div>
								<div class=skill-set>
									<div class=skill>
										<p>
											<span class=skill-item>R</span> 
											<span class=skill-value>80%</span>
										</p>
									</div>
									<div>
										<div class=progress>
											<div class="progress-bar" role="progressbar"
												aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
												style="width: 80%;">
											</div>
										</div>
									</div>
								</div>
								<div class=skill-set>
									<div class=skill>
										<p>
											<span class=skill-item>SQL</span> 
											<span class=skill-value>80%</span>
										</p>
									</div>
									<div>
										<div class=progress>
											<div class="progress-bar" role="progressbar"
												aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
												style="width: 80%;">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class=skill-col-2>
							<div class=skill-set>
									<div class=skill>
										<p>
											<span class=skill-item>Spring</span> 
											<span class=skill-value>70%</span>
										</p>
									</div>
									<div>
										<div class=progress>
											<div class="progress-bar" role="progressbar"
												aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
												style="width: 70%;">
											</div>
										</div>
									</div>
								</div>
								<div class=skill-set>
									<div class=skill>
										<p>
											<span class=skill-item>HTML</span> 
											<span class=skill-value>50%</span>
										</p>
									</div>
									<div>
										<div class=progress>
											<div class="progress-bar" role="progressbar"
												aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
												style="width: 50%;">
											</div>
										</div>
									</div>
								</div>
								<div class=skill-set>
									<div class=skill>
										<p>
											<span class=skill-item>CSS</span> 
											<span class=skill-value>50%</span>
										</p>
									</div>
									<div>
										<div class=progress>
											<div class="progress-bar" role="progressbar"
												aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
												style="width: 50%;">
											</div>
										</div>
									</div>
								</div>
								<div class=skill-set>
									<div class=skill>
										<p>
											<span class=skill-item>JQuery</span> 
											<span class=skill-value>50%</span>
										</p>
									</div>
									<div>
										<div class=progress>
											<div class="progress-bar" role="progressbar"
												aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
												style="width: 50%;">
											</div>
										</div>
									</div>
								</div>
							</div>
            </div>
            <div class="row">
				
            </div>
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
                    <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="${pageContext.request.contextPath}/img/portfolio/약빵.JPG" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="${pageContext.request.contextPath}/img/portfolio/fraud.JPG" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="${pageContext.request.contextPath}/img/portfolio/홈페이지.JPG" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal4" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="${pageContext.request.contextPath}/img/portfolio/nba.jpg" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal5" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="${pageContext.request.contextPath}/img/portfolio/commingsoon3.png" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal6" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="${pageContext.request.contextPath}/img/portfolio/commingsoon3.png" class="img-responsive" alt="">
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
                    <p>안녕하십니까? 데이터 분석역량과 개발역량을 갖춘 인재, 조경현입니다. 사용 가능 언어와 기슬로는 Java, Jsp, Spring, Mybatis, Python, Linux, R, HTML, Javascript, css, JQuery, BootStrap 등이 있습니다.</p>
                </div>
                <div class="col-lg-4">
                    <p>백엔드 개발자로 취업을 희망 중이고, 어떤 언어로 개발을 진행하던지 상관없습니다. 개발 분야에서는 기술 트렌드를 받아 들이는 것이 중요합니다. 최신 기술 트렌드를 익히기 좋아하고 끊임없이 익혀나가고자 합니다. 저에게 관심있으시면 연락주세요.</p>
                </div>
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <c:url value="/download/resume.do" var="downurl"/>  
                    <a href="${downurl}" class="btn btn-lg btn-outline-info">
                        <i class="fa fa-download"></i> Download Resume
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Contact Me</h2>
                    <hr class=line>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                    <form action="<c:url value="/mail/send.do"/>"  method=post>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Subject</label>
                                <input type="text" class="form-control" name="subject" placeholder="subject" id="name" required data-validation-required-message="Please enter your name.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Email Address</label>
                                <input type="text" name="from" class="form-control" placeholder="Email Address" id="email" required data-validation-required-message="Please enter your email address.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Message</label>
                                <textarea name="content" rows="5" class="form-control" placeholder="Message" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <input type="submit" class="btn btn-success btn-lg"></input>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>Location</h3>
                        <p>서울특별시 동대문구
                            <br>휘경로 3길 52-12 102호</p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Around the Web</h3>
                        <ul class="list-inline">
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-linkedin"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-dribbble"></i></a>
                            </li>
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
                    <div class="col-lg-12">
                        Copyright &copy; Eddy Jo 2016
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

    <!-- Portfolio Modals -->
    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>JDBC를 이용한 웹어플리케이션</h2>
                            <hr class="line">
                            <img src="${pageContext.request.contextPath}/img/portfolio/약빵.JPG" class="img-responsive img-centered" alt="">
                            <p class=portfolio-info>식품과 약품의 궁합도를 알려주는 웹어플리케이션입니다. 간편한 검색, 알아보기 쉬운 검색 UI로 사용자의 편의를 증진시킵니다.
                            <br>
                            <br>                        
                                                    사용 언어: <a>Java, SQL, HTML</a>
							<br>
							OS 및 DB: <a>Windows 10 Home, Oracle 11g express, Apache Tomcat 8.0.36</a>
							<br>
							담당 업무: <a>JDBC를 이용한 궁합도 분석 프로그래밍, 차트API를 이용한 분석차트</a>
                            </p>
                            <ul class="list-inline item-details">
                                <li>Client:<a>글로벌 SW공모대전</a>
                                </li>
                                <li>Date: <a>2016.09</a>
                                </li>
                                <li>Service: <a>Web develoment</a>
                                </li>

                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>머신러닝을 활용한 보험사기자 예측</h2>
                            <hr class="line">
                            <img src="${pageContext.request.contextPath}/img/portfolio/fraud.JPG" class="img-responsive img-centered" alt="">
							<p class=portfolio-info>
								Xgboost와 SVM알고리즘을 이용해 보험사기자를 예측하여 precision 0.78과 recall 0.5의
								결과를 냈습니다. 총 5개의 테이블을 전처리부터 파생변수 생성, 모델링, 평가와 같은 KDD process 과정을
								거쳐 프로젝트를 수행하였습니다. 
								<br> <br> 
								사용 언어: <a>SQL, R</a> <br>
								분석환경: <a>Rstudio, SQLdeveloper </a> 
								<br> 
								담당 업무: <a>데이터전처리, 파생변수 생성, 모델링, 평가</a>
							</p>
							<ul class="list-inline item-details">
                            	<li>Client:<a>빅콘테스트</a>
                                </li>
                                <li>Date: <a>2016.11</a>
                                </li>
                                <li>Service: <a>data analysis</a>
                                </li>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Project Title</h2>
                            <hr class="star-primary">
                            <img src="${pageContext.request.contextPath}/img/portfolio/홈페이지.JPG" class="img-responsive img-centered" alt="">
                            <p>Use this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!</p>
                            <ul class="list-inline item-details">
                                <li>Client:
                                    <strong><a href="http://startbootstrap.com">Start Bootstrap</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong><a href="http://startbootstrap.com">April 2014</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong><a href="http://startbootstrap.com">Web Development</a>
                                    </strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>NBA선수 관리 프로그램</h2>
                            <hr class="line">
                            <img src="${pageContext.request.contextPath}/img/portfolio/nba.jpg" class="img-responsive img-centered" alt="">
                            <p class=portfolio-info>
								Python을 이용해 NBA 선수의 데이터를 입력, 출력, 삭제, 조회하는 프로그램
								<br> <br> 
								사용 언어: <a>Python</a> <br>
								OS 및 DB: <a>Window 10 Home</a> 
								<br> 
								담당 업무: <a>CRUD 프로그래밍</a>
						    </p>
                            <ul class="list-inline item-details">
                            	<li>Client: <a>개인 프로젝트</a>
                                </li>
                                <li>Date: <a>2016.06</a>
                                </li>
                                <li>Service: <a>development</a>
                                </li>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Project Title</h2>
                            <hr class="star-primary">
                            <img src="${pageContext.request.contextPath}/img/portfolio/commingsoon3.png" class="img-responsive img-centered" alt="">
                            <p>Use this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!</p>
                            <ul class="list-inline item-details">
                                <li>Client:
                                    <strong><a href="http://startbootstrap.com">Start Bootstrap</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong><a href="http://startbootstrap.com">April 2014</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong><a href="http://startbootstrap.com">Web Development</a>
                                    </strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Project Title</h2>
                            <hr class="star-primary">
                            <img src="${pageContext.request.contextPath}/img/portfolio/commingsoon3.png" class="img-responsive img-centered" alt="">
                            <p>Use this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!</p>
                            <ul class="list-inline item-details">
                                <li>Client:
                                    <strong><a href="http://startbootstrap.com">Start Bootstrap</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong><a href="http://startbootstrap.com">April 2014</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong><a href="http://startbootstrap.com">Web Development</a>
                                    </strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="${pageContext.request.contextPath}/js/jqBootstrapValidation.js"></script>
    <script src="${pageContext.request.contextPath}/js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="${pageContext.request.contextPath}/js/freelancer.min.js"></script>

</body>
</html>