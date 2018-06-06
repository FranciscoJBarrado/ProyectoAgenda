<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<spring:url value="/static/css/style.css" var="estilo" />
	<link href="${estilo}" rel="stylesheet"  type="text/css" media="all"/>
<link href="<c:url value="/static/css/style.css" />" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>HOLA MACHOTE</h1>
<<<<<<< HEAD

<c:forEach var="user" items="${userList}" varStatus="status">
				<tr>
					<td>${status.index + 1}</td>
					<td>${user.nombre}</td>					
					</td>
				</tr>
			</c:forEach>
=======
<h2>${hola}</h2>
<table border="1">
<tr>
			<th>Nº</th>
			<th>Nombre</th>
			<th>Apellido</th>
			<th>Apellido</th>
			<th>DNI</th>
			<th>idEmpleado</th>
			<th>CODEmpleado</th>
			<th>Salario</th>
			<th>FechaAlta</th>
			<th>Departamento</th>
			<th>Nombre Departamento</th>
			
		
			</tr>
	<c:forEach var="user" items="${userList}" varStatus="status">
				<tr>
					<td>${status.index + 1}</td>
					<td>${user.nombre}</td>
					<td>${user.apellido1}</td>
					<td>${user.apellido2}</td>
					<td>${user.dni}</td>
					<td>${user.empleados.idempleados}</td>
					<td>${user.empleados.codEmpleado}</td>
					<td>${user.empleados.salario}</td>
					<td>${user.empleados.fechaAlta}</td>
					<td>${user.empleados.departamentos.iddepartamento}</td>
					<td>${user.empleados.departamentos.nombre}</td>
					
					
					
					</td>
				</tr>
			</c:forEach>
			</table>
>>>>>>> master
</body>
</html>