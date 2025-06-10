<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session checker</title>
</head>
<body>
	<h1>Session checker</h1>

	<p>Verificando si su sesión ha sido validada</p>

	<%
	String usuario = "";
	try { //AQUI VA EL CONTROL DE SESION
		usuario = session.getAttribute("user").toString();
		String acceso = session.getAttribute("activo").toString();
		if (acceso.equals("1")) {
	%>
	<p>
		Su sesión se ha validado correctamente. Bienvenido
		<%=usuario%></p>
	<%
	}
	} catch (Exception e) {
	%>
	<p style="color: red;">Lo sentimos su cuenta está desactivada</p>
	<%
	}
	%>

	<a href="index.jsp">Volver a inicio</a>

</body>
</html>
