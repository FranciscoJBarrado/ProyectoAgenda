<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Agenda</title>
<link rel="icon"
	href="http://designstub.com/demos/iland/images/favicon.png"
	type="image/png" sizes="16x16">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="iLand Multipurpose Landing Page Template">
<meta name="keywords"
	content="iLand HTML Template, iLand Landing Page, Landing Page Template">

<spring:url value="/static/css/bootstrap.min.css" var="estilosBootstrap.min" />
	<link href="${estilosBootstrap.min}" rel="stylesheet"  type="text/css" media="all"/>

<spring:url value="/static/css/css.css" var="estilosCss" />
	<link href="${estilosCss}" rel="stylesheet"  type="text/css" />

<spring:url value="/static/css/animate.css" var="estilosAnimateCss" />
	<link href="${estilosAnimateCss}" rel="stylesheet"  type="text/css" />


<!-- Resource style -->

<spring:url value="/static/css/owl.carousel.css" var="estilosCarCss" />
	<link href="${estilosCarCss}" rel="stylesheet"  type="text/css" />

<spring:url value="/static/css/owl.theme.css" var="estilosThemeCss" />
	<link href="${estilosThemeCss}" rel="stylesheet"  type="text/css" />

<spring:url value="/static/css/ionicons.min.css" var="estilosMinCss" />
	<link href="${estilosMinCss}" rel="stylesheet"  type="text/css" />


<!-- Resource style -->


<spring:url value="/static/css/style.css" var="estilosStyle" />
	<link href="${estilosStyle}" rel="stylesheet"  type="text/css" media="all"/>


</head>
<body>
	<div class="wrapper">
		<div class="container">
			<nav
				class="navbar navbar-default navbar-fixed-top effect-main past-main">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header page-scroll">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<h1>Agenda</h1> 
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="navbar-collapse navbar-right collapse"
						id="bs-example-navbar-collapse-1" aria-expanded="false"
						style="height: 0px;">
						<ul class="nav navbar-nav">
							<li><a class="page-scroll"
								href="http://designstub.com/demos/iland/#main">Product</a></li>
							<li><a class="page-scroll"
								href="http://designstub.com/demos/iland/#features">Features</a></li>
							<li><a class="page-scroll"
								href="http://designstub.com/demos/iland/#review-section">Reviews</a></li>
							<li><a class="page-scroll"
								href="http://designstub.com/demos/iland/#pricing">Pricing</a></li>
							<li><a class="page-scroll"
								href="http://designstub.com/demos/iland/#contact">Contact</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
		<h1>${hola}</h1>
		<div class="main app form" id="main">
			<!-- Main Section-->
			<div class="hero-section">
				<div class="container nopadding">
					<div class="col-md-6 col-md-offset-3 features-left">
						<img class="img-responsive wow fadeInUp" data-wow-delay="0.1s"
							src="/static/images/app-signup.png"
							alt="App"
							style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
					</div>


				</div>
			</div>

			<!-- Client Section -->
			<div class="client-section">
				<div class="container text-center">
					<div class="clients owl-carousel owl-theme"
						style="opacity: 1; display: block;">
						<div class="owl-wrapper-outer">
							<div class="owl-wrapper"
								style="width: 3290px; left: 0px; display: block; transition: all 1000ms ease; transform: translate3d(0px, 0px, 0px);">
								<div class="owl-item" style="width: 235px;">
									<div class="owl-wrapper-outer">
										<div class="owl-wrapper-outer">
											<div class="owl-wrapper"
												style="width: 3290px; left: 0px; display: block; transition: all 1000ms ease; transform: translate3d(0px, 0px, 0px);">
												<div class="owl-item" style="width: 235px;">
													<div class="single"></div>
												</div>
												<div class="owl-item" style="width: 235px;">
													
												<div class="owl-item" style="width: 235px;">
													
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>





					</div>
				</div>
			</div>
			<div class="app-features text-center" id="features">
				<div class="container">
					<h1 class="wow fadeInDown" data-wow-delay="0.1s"
						style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInDown;">Contactos</h1>
					<p class="wow fadeInDown" data-wow-delay="0.2s"
						style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInDown;">
						Listado de contactos<br class="hidden-xs">
					</p>


					<div class="col-md-6 col-md-offset-3 features-left">


						<div class="col-md-12 wow fadeInDown" data-wow-delay="0.8s"
							style="visibility: visible; animation-delay: 0.8s; animation-name: fadeInDown;">

							<div class="col-md-8 col-md-offset-2 features-centre">

								<table border="1">
									<tbody>
										<tr>
											<th><h3 class="h3">
													<strong>Nombre</strong>
												</h3></th>
											<th><h3 class="h3">
													<strong>Apellidos</strong>
												</h3></th>
										</tr>

										<c:forEach var="user" items="${userList}" varStatus="status">


										<tr>
											<td><a class="linker" href="edit?id=${user.idpersonas}">${user.nombre}</a></td>
											<td>&nbsp;<a class="linker" href="edit?id=${user.idpersonas}">${user.apellido1}</a></td>
											<td>&nbsp;<a class="linker" href="edit?id=${user.idpersonas}">${user.apellido2}</a></td>
										</tr>
										</c:forEach>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>












			<!-- Subscribe Form -->
			<div class="cta-sub no-color">
				<div class="container">
					<div class="cta-inner">
						<h1 class="wow fadeInUp" data-wow-delay="0s"
							style="visibility: visible; animation-delay: 0s;">Sign Up to
							Our Newsletter and get exciting offers</h1>
						<p class="wow fadeInUp" data-wow-delay="0.2s"
							style="visibility: visible; animation-delay: 0.2s;">
							Enter your email address we promise, never disclose<br
								class="hidden-xs"> or sell your email address.
						</p>
						<div class="form wow fadeInUp" data-wow-delay="0.3s"
							style="visibility: visible; animation-delay: 0.3s;">
							<form class="subscribe-form center-form wow zoomIn animated"
								action="http://designstub.com/demos/iland/php/subscribe.php"
								method="post" name="subscribeform" id="subscribeform"
								style="visibility: visible;">
								<input class="mail" type="email" name="email"
									placeholder="Join the wait list" autocomplete="off"
									id="subemail"> <input class="submit-button"
									type="submit" value="Subscribe" name="send" id="subsubmit">
							</form>
							<!-- subscribe message -->
							<div id="mesaj"></div>
							<!-- subscribe message -->
						</div>
					</div>
				</div>
			</div>

			<!-- Footer Section -->
			<div class="footer">
				<div class="container">
					<div class="col-md-7">
	
						<p>Lorem ipsum dolor sit. Incidunt laborum beatae earum nihil
							odio consequatur officiis tempore consequuntur officia ducimus
							unde doloribus quod unt repell</p>
						<div class="footer-text">
							<p>
								Copyright © 2016 iLand. All Rights Reserved. Made with <i
									class="ion-heart"></i> by <a href="http://www.designstub.com/">Designstub</a>
							</p>
						</div>
					</div>
					<div class="col-md-5">
						<h1>Contact Us</h1>
						<p>
							Contact our 24/7 customer support if you have any <br
								class="hidden-xs"> questions. We'll help you out.
						</p>
						<a href="mailto:support@gmail.com">contact@iland.com</a>
					</div>
				</div>
			</div>
		</div>

		<!-- Scroll To Top -->

		<a id="back-top" class="back-to-top page-scroll"
			href="http://designstub.com/demos/iland/#main" style="display: none;">
			<i class="ion-ios-arrow-thin-up"></i>
		</a>

		<!-- Scroll To Top Ends-->

	</div>
	<!-- Main Section -->

	<!-- Wrapper-->

	<!-- Jquery and Js Plugins -->
	
	 
	
	<spring:url value="/static/js/jquery-2.1.1.js" var="jquery" />
	<script type="text/javascript" src="${jquery}"></script> />

	<spring:url value="/static/js/bootstrap.min.js" var="js2" />
	<script type="text/javascript" src="${js2}" ></script>/>

	<spring:url value="/static/js/plugins.js" var="js3" />
	<script type="text/javascript" src="${js3}" ></script> />


	<spring:url value="/static/js//menu.js" var="js4" />
	<script type="text/javascript" src="${js4}" ></script> />


	<spring:url value="/static/js/custom.js" var="js5" />
	<script type="text/javascript" src="${js5}"></script> />

	<spring:url value="/static/js/jquery.subscribe.js" var="js6" />
	<script type="text/javascript" src="${js6}" ></script> />
 

 
 <!-- Jquery and Js Plugins -->
  <!-- 
 
	<script type="text/javascript"
		src="/static/js/jquery-2.1.1.js.descarga"></script>
	<script type="text/javascript"
		src="/static/js/bootstrap.min.js.descarga"></script>

	<script type="text/javascript"
		src="/static/js/plugins.js.descarga"></script>
	<script type="text/javascript"
		src="/static/js//menu.js.descarga"></script>
	<script type="text/javascript"
		src="/static/js/custom.js.descarga"></script>
	<script
		src="/static/js/jquery.subscribe.js.descarga"></script>
 -->

</body>
</html>