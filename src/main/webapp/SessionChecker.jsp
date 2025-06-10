<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String result = "";
try { //AQUI VA EL CONTROL DE SESION
	String acceso = session.getAttribute("activo").toString();
	result = "<p>Your session is <b>OK</b>. You have been authenticated.</p>";
} catch (Exception e) {
	result = "<p style='color: red;'>Something wrong with you: <b>You have NOT been authenticated</b>.</p>";
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>LDTS Session Handler Checker</title>
</head>
<body style="padding: 25% 10%;">
	<h1>Session Checker</h1>
	<p>Checking if your session has been authenticated...</p>

	<%=result%>

</body>
</html>
