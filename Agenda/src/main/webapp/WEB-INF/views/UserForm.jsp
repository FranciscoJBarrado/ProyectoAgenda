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
							style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInDown;">Contactos</h1>
						<p class="wow fadeInDown" data-wow-delay="0.2s"
							style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInDown;">
							Listado de contactos<br class="hidden-xs">
						</p>
						<div>

							<form:form method="post" action="buscar" modelAttribute="buscar">
								<a class="enlaceboton" href="delete?id=${user.idpersonas }">&nbsp;Eliminar&nbsp;</a>&nbsp;
								<a class="enlaceboton" href="edit2?id=${user.idpersonas }">&nbsp;Modificar&nbsp;</a>&nbsp;
								<a class="enlaceboton" href="ret">&nbsp;Volver&nbsp;</a>

							</form:form>
						</div>
						<div class="col-md-6 col-md-offset-3 features-left">


							<div class="col-md-12 wow fadeInDown" data-wow-delay="0.8s"
								style="visibility: visible; animation-delay: 0.8s; animation-name: fadeInDown;">

								<div class="col-md-8 col-md-offset-2 features-centre">

									<table border="1" class="centro">
										<tbody>
											<tr>
												<th><h3 class="h3">
														<strong>NOMBRE&nbsp;</strong>
													</h3></th>
												<th><h3 class="h3">
														<strong> Y APELLIDOS&nbsp;&nbsp;</strong>
													</h3></th>

												<th><h3 class="h3">
														<strong>DNI&nbsp;&nbsp;</strong>
													</h3></th>
												<th><h3 class="h3">
														<strong> COD&nbsp;&nbsp;</strong>
													</h3></th>
												<th><h3 class="h3">
														<strong> SALARIO&nbsp;&nbsp;</strong>
													</h3></th>
												<th><h3 class="h3">
														<strong> ALTA&nbsp;&nbsp;</strong>
													</h3></th>

												<th><h3 class="h3">
														<strong> ID DEP&nbsp;&nbsp;</strong>
													</h3></th>
												<th><h3 class="h3">
														<strong>NOMBRE DEP </strong>
													</h3></th>


											</tr>
											<tr>
												<td></td>
											</tr>

											<tr>
												<td><a class="linker" href="edit?id=${user.idpersonas}">${user.nombre}</a></td>
												<td>&nbsp;<a class="linker"
													href="edit?id=${user.idpersonas}">${user.apellido1}
														&nbsp;${user.apellido2}</a></td>
												<td>&nbsp;<a class="linker"
													href="edit?id=${user.idpersonas}">${user.dni}&nbsp;&nbsp;</a></td>
												<td>&nbsp;<a class="linker"
													href="edit?id=${user.idpersonas}">${user.empleados.codEmpleado}&nbsp;&nbsp;</a></td>
												<td>&nbsp;<a class="linker"
													href="edit?id=${user.idpersonas}">${user.empleados.salario}&nbsp;&nbsp;</a></td>
												<td>&nbsp;<a class="linker"
													href="edit?id=${user.idpersonas}">${user.empleados.fechaAlta}&nbsp;&nbsp;</a></td>
												<td>&nbsp;<a class="linker"
													href="edit?id=${user.idpersonas}">${user.empleados.departamentos.iddepartamento}&nbsp;&nbsp;</a></td>
												<td>&nbsp;<a class="linker"
													href="edit?id=${user.idpersonas}">${user.empleados.departamentos.nombre}&nbsp;&nbsp;</a></td>




											</tr>

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