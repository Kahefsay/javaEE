<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Identification</title>
</head>
<body>

<c:choose>
	<c:when test="${empty utilisateur}">
		<h1>Veuillez vous identifier</h1>
	</c:when>
	<c:when test="${utilisateur.etat == 'inconnu'}">
		<h1>Recommencer</h1>
	</c:when>
	<c:otherwise>
		<h1>Bonjour <c:out value="${utilisateur.etat}"></c:out></h1>
	</c:otherwise>

</c:choose>

<form method="post" action="Login">
	<label for="nom">Nom : </label>
	<input type="text" name="pseudo" id="pseudo" value="${pseudo}"/>
	
	<label for="password">Mot de passe : </label>
	<input type="password" name="password" id="password" />	
	<input type="submit"/>
</form>

</body>
</html>