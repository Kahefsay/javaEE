<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Deuxieme</title>
</head>
<body>

<c:out value="La JSTL fonctionne !" />
<ul>
<c:forEach items ="${films}" var="titre" varStatus="state">
	<li>${ state.count } - <c:out value="${titre}"/></li>
</c:forEach>
</ul>

<h1>Servlet + JSP</h1>
<h2>C'est trop facile JAVA EE</h2>
<h3>${user.nomComplet} est ${user.actif ? "Actif" : "Inactif"}</h3>

<p>${user.nom=="PELLEAU" ? "C'est un très joli nom" : ""}</p>

<%
	String message = (String) request.getAttribute("information");
	out.println(message);
%>

<hr/>

<b>${information}</b>

<a href="Page2">Changer de nom</a>

</body>
</html>