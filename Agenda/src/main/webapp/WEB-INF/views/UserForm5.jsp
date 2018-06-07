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
	
		<!-- /.container-fluid -->
		<div class="main app form" id="main">


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
				<div align="center" class="centro">
					<h1 class="wow fadeInDown" data-wow-delay="0.1s"
						style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInDown;">Datos de contacto</h1>
					<p class="wow fadeInDown" data-wow-delay="0.2s"
						style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInDown;">
						Listado de contactos<br class="hidden-xs">
					</p>
					<div>

						<form:form method="post" action="buscar" modelAttribute="buscar" class="form-horizontal">
						<a class="enlaceboton" href="crear">&nbsp;Crear&nbsp;</a>
						<input type="text" class="enlaceboton" name="buscar"/>
						<input type="submit" class="enlaceboton" value="Buscar">
						</form:form>
					</div>
					<div class="col-md-6 col-md-offset-3 features-left">


						<div class="col-md-12 wow fadeInDown" data-wow-delay="0.8s"
							style="visibility: visible; animation-delay: 0.8s; animation-name: fadeInDown;">

							<div class="col-md-8 col-md-offset-2 features-centre">

								
<table border="1">
<tbody>
			<tr><td>ID</td><td>${user.id}</td></tr>
			<tr><td>Nombre</td><td>${user.nombre}</td></tr>
			
			<tr><td>Apellido</td><td>${user.apellido1}</td></tr>
			
			<tr><td>Apellido 2</td><td>${user.apellido2}</td></tr>
			<tr><td>DNI</td><td>${user.dni}</td></tr>
			<tr><td>idEmpleado</td><td>${user.empleados.idempleados}</td></tr>
			<tr><td>CODEmpleado</td><td>${user.empleados.codEmpleado}</td></tr>
			<tr><td>Salario</td><td>${user.empleados.salario}</td></tr>
			<tr><td>FechaAlta</td><td>${user.empleados.fechaAlta}</td></tr>
			<tr><td>Departamento</td><td>${user.empleados.departamentos.iddepartamento}</td></tr>
			<tr><td>Nombre Departamento</td><td>${user.empleados.departamentos.nombre}</td></tr>
			
		
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
	

		<!-- Scroll To Top -->

	
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
 



</body>
</html>