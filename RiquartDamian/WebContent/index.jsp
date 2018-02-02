<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calculatrice</title>
</head>
<body>

<h1>Calculatrice magique</h1>

<form method="post" action="calculatrice">
  <input type="text" name="nbre1">
  <br><br>
  <select name="operation">
  	<option value="plus">+</option>
  	<option value="moins">-</option>
  	<option value="multiplication">*</option>
  	<option value="division">/</option>
  </select><br><br>
  <input type="text" name="nbre2">
  <br><br>
  <input type="submit" value="Submit">
</form> 

<br>

<c:out value="${resultat}"/>

<%
	String message = (String) request.getAttribute("resultat");
	if(message != null) {
		out.println("Resultat : " + message);
	}
%>

</body>
</html>