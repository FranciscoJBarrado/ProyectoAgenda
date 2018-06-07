<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
<h2>${hola}</h2>

<form:form method="post"  modelAttribute="user" class="form-horizontal">

<input type="label" value="ID"/>


<form:input  path="user.id" name="id" placeholder="${user.id}"/>
<td><form:errors path="user.id"/></td>
<input type="label" value="Nombre"/>
<form:input type="text" name="nombre" placeholder="${user.nombre}" path="user.nombre"/>

<input type="label" value="Apellido 1"/>
<form:input type="text" name="Nº" placeholder="${user.apellido1}" path="user.apellido1"/>

<input type="label" value="Apellido 2"/>
<form:input type="text" name="Nº" placeholder="${user.apellido2}" path="user.apellido2"/>

<input type="label" value="D.N.I."/>
<form:input type="text" name="Nº" placeholder="${user.dni}" path="user.dni"/>

<input type="label" value="idEmpleado"/>
<form:input type="text" name="Nº" placeholder="${user.empleados.idempleados}" path="user.empleados.idempleados"/>

<input type="label" value="Cod Empleado"/>
<form:input type="text" name="Nº" placeholder="${user.empleados.codEmpleado}" path="user.empleados.codEmpleado"/>

<input type="label" value="Fecha Alta"/>
<form:input type="text" name="Nº" placeholder="${user.empleados.fechaAlta}" path="user.empleados.fechaAlta"/>

<input type="label" value="Salario"/>
<form:input type="text" name="Nº" placeholder="${user.empleados.salario}" path="user.empleados.salario"/>

<input type="label" value="ID Departamento"/>
<form:input type="text" name="Nº" placeholder="${user.empleados.departamentos.iddepartamento}" path="user.departamentos.iddepartamento"/>

<input type="label" value="Nombre Departamento"/>
<form:input type="text" name="Nº" placeholder="${user.empleados.departamentos.nombre}" path="user.departamentos.nombre"/>


<input type="submit" value="Guardar">
</form:form>
<table border="1">
<tr>
						<td></td>
					<td></td>
					<td>${user.empleados.salario}</td>
					<td>${user.empleados.fechaAlta}</td>
					<td>${user.empleados.departamentos.iddepartamento}</td>
					<td>${user.empleados.departamentos.nombre}</td>
			
		
			</tr>
				<tr>
					<td></td>
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
			</table>
</body>
</html>