<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>일코노미 &mdash; 여기에 부제목 쓰고싶은데 생각나는게 없어요</title>
	
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/css_main/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/css_main/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/css_main/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/css_main/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/css_main/magnific-popup.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/css_main/bootstrap-datepicker.min.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/css_main/owl.carousel.min.css">
	<link rel="stylesheet" href="css/css_main/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/css_main/style.css">
	
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/css_main/patch.css' />">
	<!-- jQuery -->
	<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
	<!-- jQuery Easing -->
	<script src="js/js_main/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/js_main/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/js_main/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/js_main/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/js_main/jquery.countTo.js"></script>

	<!-- Magnific Popup -->
	<script src="js/js_main/jquery.magnific-popup.min.js"></script>
	<script src="js/js_main/magnific-popup-options.js"></script>
	
	<!-- Datepicker -->
	<script src="js/js_main/bootstrap-datepicker.min.js"></script>
	
	<!-- Main -->
	<script src="js/js_main/main.js"></script>

	<!-- Modernizr JS -->
	<script src="js/js_main/modernizr-2.6.2.min.js"></script>
	

	</head>
	<body>
	<c:import url="/WEB-INF/views/layout/top.jsp"/>
	
	
	<div class="gtco-loader"></div>
	
	<div id="page">
	
	<div class="gtco-section">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<h2>다양한 서비스</h2>
					<p>혼자 해결하기 귀찮은 공동 구매, 빨래, 식사 그리고 안전 서비스까지 <br>일코노미 웹사이트에서 한 번에 이용해보세요</p>
				</div>
			</div>
			<div class="row">

				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="/ilcoeat/main" class="fh5co-card-item">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src='<c:url value="/image/main_images/아이콘_일코푸드.png"/>' alt="Image" class="img-responsive">
						</figure>
						<div class="fh5co-text">
							<h2>일코 푸드</h2>
							<p>나의 소중한 시간을 위해 <br> 식사 준비는 일코 푸드에서 해드리겠습니다</p>
							<p><span class="btn btn-primary">서비스 신청</span></p>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="/safe/main" class="fh5co-card-item">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src='<c:url value="/image/main_images/아이콘_안심귀가.png"/>' alt="Image" class="img-responsive">
						</figure>
						<div class="fh5co-text">
							<h2>안심 귀가 서비스</h2>
							<p>귀갓길이 불안한 당신을 위한<br>최고의 귀가 파트너</p>
							<p><span class="btn btn-primary">서비스 신청</span></p>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="#" class="fh5co-card-item">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src='<c:url value="/image/main_images/아이콘_안심동행.png"/>' alt="Image" class="img-responsive">
						</figure>
						<div class="fh5co-text">
							<h2>안심 동행 서비스</h2>
							<p>몸이 불편하신 분들을 위한<br>동행 서비스</p>
							<p><span class="btn btn-primary">서비스 신청</span></p>
						</div>
					</a>
				</div>


				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="/laundry_kbh/laundryMain" class="fh5co-card-item">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src='<c:url value="/image/main_images/아이콘_일코 빨래방.png"/>' alt="Image" class="img-responsive">
						</figure>
						<div class="fh5co-text">
							<h2>세탁 서비스</h2>
							<p>설명 넣으세용<br>링크도 넣으세용</p>
							<p><span class="btn btn-primary">바로가기</span></p>
						</div>
					</a>
				</div>

				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="/ilcocommunity/boardlist" class="fh5co-card-item">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src='<c:url value="/image/main_images/아이콘_커뮤니티.png"/>' alt="Image" class="img-responsive">
						</figure>
						<div class="fh5co-text">
							<h2>커뮤니티</h2>
							<p>이웃들과 다양한<br>일상을 공유해 보세요</p>
							<p><span class="btn btn-primary">바로가기</span></p>
						</div>
					</a>
				</div>

				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="#" class="fh5co-card-item">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src="#" alt="Image" class="img-responsive">
						</figure>
						<div class="fh5co-text">
							<h2>챗봇</h2>
							<p>궁금한 내용이 있다면<br>언제나 문의주세요</p>
							<p><span class="btn btn-primary">바로가기</span></p>
						</div>
					</a>
				</div>

			</div>
		</div>
	</div>
	
	
	<div id="gtco-features" >
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2>일코노미 서비스 지역</h2>
					<p>더 많은 지역에서 서비스 할 수 있도록 노력하겠습니다</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						
						<img src='<c:url value="/image/main_images/역삼.png"/>' class="durimg" alt="Image">
						
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						
						<img src='<c:url value="/image/main_images/신림.png"/>' class="durimg" alt="Image">
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						
						<img src='<c:url value="/image/main_images/화양.png"/>' class="durimg" alt="Image">
					</div>
				</div>
				

			</div>
		</div>
	</div>

	<div id="gtco-counter" class="gtco-section">
		<div class="gtco-container">

			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2>늘어나는 1인 가구</h2>
					<p>여전히 매년 마다 1인 가구는 증가하고 있습니다</p>
				</div>
			</div>

			<div class="row">
				
				<div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInUp">
					<div class="feature-center">
						<span class="counter js-counter" data-from="0" data-to="5849000" data-speed="2000" data-refresh-interval="50">1</span>
						<span class="counter-label">2018년</span>

					</div>
				</div>
				<div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInUp">
					<div class="feature-center">
						<span class="counter js-counter" data-from="0" data-to="6148000" data-speed="2500" data-refresh-interval="50">1</span>
						<span class="counter-label">2019년</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInUp">
					<div class="feature-center">
						<span class="counter js-counter" data-from="0" data-to="6643000" data-speed="3000" data-refresh-interval="50">1</span>
						<span class="counter-label">2020년</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInUp">
					<div class="feature-center">
						<span class="counter js-counter" data-from="0" data-to="7166000" data-speed="3500" data-refresh-interval="50">1</span>
						<span class="counter-label">2021년</span>

					</div>
				</div>
					
			</div>
		</div>
	</div>

	

	<div id="gtco-subscribe">
		<div class="gtco-container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<h2>구독</h2>
					<p>편리한 1인 생활을 위해</p>
				</div>
			</div>
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2">
					<form class="form-inline">
						<div class="col-md-6 col-sm-6">
							<div class="form-group">
								<label for="email" class="sr-only">Email</label>
								<input type="email" class="form-control" id="email" placeholder="미완성">
							</div>
						</div>
						<div class="col-md-6 col-sm-6">
							<button type="submit" class="btn btn-default btn-block">Subscribe</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<footer id="gtco-footer" role="contentinfo">
		<div class="gtco-container">
			<div class="row row-p	b-md">

				<div class="col-md-4">
					<div class="gtco-widget" style="width:336.66px">
						<h3>About Us</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum justo eu blandit feugiat. Fusce feugiat odio eget massa lacinia, eget scelerisque tellus congue.</p>
					</div>
				</div>

				<div class="col-md-2 col-md-push-1">
					<div class="gtco-widget">
						<h3>바로가기</h3>
						<ul class="gtco-footer-links">
							<li><a href="/ilcoeat/main">일코푸드</a></li>
							<li><a href="/safe/main">안심서비스</a></li>
							<li><a href="#">안심 동행</a></li>
							<li><a href="/laundry_kbh/laundryMain">세탁서비스</a></li>
							<li><a href="/ilcocommunity/boardlist">커뮤니티</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-2 col-md-push-1">
					<div class="gtco-widget">
						
					</div>
				</div>

				<div class="col-md-3 col-md-push-1">
					<div class="gtco-widget">
						<h3>Get In Touch</h3>
						<ul class="gtco-quick-contact">
							<li><a href="#"><i class="icon-phone"></i> 010 1234 5678</a></li>
							<li><a href="#"><i class="icon-mail2"></i> iconomi@gmail.com</a></li>
							<li><a href="#"><i class="icon-chat"></i> Live Chat</a></li>
						</ul>
					</div>
				</div>

			</div>

			<div class="row copyright">
				<div class="col-md-12">
					<p class="pull-left">
						<small class="block">&copy; 2023 일코노미. All Rights Reserved.</small> 
						<small class="block">Designed by <a href="/" target="_blank">iconomi Team</a></small>
					</p>
					<p class="pull-right">
						<ul class="gtco-social-icons pull-right">
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-linkedin"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
						</ul>
					</p>
				</div>
			</div>

		</div>
	</footer>
	<!-- </div> -->

	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	

	</body>
</html>