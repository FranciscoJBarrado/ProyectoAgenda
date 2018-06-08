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

<spring:url value="/static/css/bootstrap.min.css"
	var="estilosBootstrap.min" />
<link href="${estilosBootstrap.min}" rel="stylesheet" type="text/css"
	media="all" />

<spring:url value="/static/css/css.css" var="estilosCss" />
<link href="${estilosCss}" rel="stylesheet" type="text/css" />

<spring:url value="/static/css/animate.css" var="estilosAnimateCss" />
<link href="${estilosAnimateCss}" rel="stylesheet" type="text/css" />


<!-- Resource style -->

<spring:url value="/static/css/owl.carousel.css" var="estilosCarCss" />
<link href="${estilosCarCss}" rel="stylesheet" type="text/css" />

<spring:url value="/static/css/owl.theme.css" var="estilosThemeCss" />
<link href="${estilosThemeCss}" rel="stylesheet" type="text/css" />

<spring:url value="/static/css/ionicons.min.css" var="estilosMinCss" />
<link href="${estilosMinCss}" rel="stylesheet" type="text/css" />


<!-- Resource style -->


<spring:url value="/static/css/style.css" var="estilosStyle" />
<link href="${estilosStyle}" rel="stylesheet" type="text/css"
	media="all" />


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

													<div class="owl-item" style="width: 235px;"></div>
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
							style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInDown;">Modificar</h1>
						<p class="wow fadeInDown" data-wow-delay="0.2s"
							style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInDown;">
							Listado de contactos<br class="hidden-xs">
						</p>
						<div>

							<form:form method="post" action="buscar" modelAttribute="buscar">

								<a class="enlaceboton" href="ret">&nbsp;Volver&nbsp;</a>

							</form:form>
						</div>
						<div class="col-md-6 col-md-offset-3 features-left">


							<div class="col-md-12 wow fadeInDown" data-wow-delay="0.8s"
								style="visibility: visible; animation-delay: 0.8s; animation-name: fadeInDown;">

								<div class="col-md-8 col-md-offset-2 features-centre">

								
<form:form method="post"  action="save" commandName="user" class="form-horizontal">

<table>
<tr><td><input type="label" value="ID"/></td></tr>


<td><form:input type="text"  path="idpersonas" name="id" placeholder="${user.idpersonas}"/></td></tr>
<tr><td><form:errors path="idpersonas"/><td><tr>
<tr><td><input type="label" value="Nombre"/><td><tr>
<tr><td><form:input type="text" name="nombre" placeholder="${user.nombre}" path="nombre"/></td></tr>
<tr><td><form:errors path="nombre"/>

<tr><td><input type="label" value="Apellido 1"/></tr></tr>
<tr><td><form:input type="text" name="apellido1" placeholder="${user.apellido1}" path="apellido1"/></td></tr>

<tr><td><input type="label" value="Apellido 2"/></td></tr>
<tr><td><form:input type="text" name="apellido2" placeholder="${user.apellido2}" path="apellido2"/></td></tr>

<tr><td><input type="label" value="D.N.I."/></td></tr>
<tr><td><form:input type="text" name="dni" placeholder="${user.dni}" path="dni"/></td></tr>
 
<tr><td><input type="submit" value="Guardar"></td></tr>

</table>
</form:form>
								</div>
							</div>
						</div>
					</div>
				</div>











				<!-- Subscribe Form -->
				<div class="cta-sub no-color">
					<div class="container">
						<div class="cta-inner">

							<div class="form wow fadeInUp" data-wow-delay="0.3s"
								style="visibility: visible; animation-delay: 0.3s;">

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
						<div class="col-md-7"></div>
					</div>
					<div class="col-md-5"></div>
				</div>
			</div>
		</div>


	</div>
	<!-- Main Section -->

	<!-- Wrapper-->

	<!-- Jquery and Js Plugins -->



	<spring:url value="/static/js/jquery-2.1.1.js" var="jquery" />
	<script type="text/javascript" src="${jquery}"></script>
	

	<spring:url value="/static/js/bootstrap.min.js" var="js2" />
	<script type="text/javascript" src="${js2}"></script>
	

	<spring:url value="/static/js/plugins.js" var="js3" />
	<script type="text/javascript" src="${js3}"></script>
	


	<spring:url value="/static/js//menu.js" var="js4" />
	<script type="text/javascript" src="${js4}"></script>
	


	<spring:url value="/static/js/custom.js" var="js5" />
	<script type="text/javascript" src="${js5}"></script>
	

	<spring:url value="/static/js/jquery.subscribe.js" var="js6" />
	<script type="text/javascript" src="${js6}"></script>
	



</body>
</html>