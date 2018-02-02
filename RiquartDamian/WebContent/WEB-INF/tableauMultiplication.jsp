<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tableau multiplication</title>
</head>
<body>

<h1>Tableau multiplication</h1>

<form method="get" action="tableauMultiplication">
	<label for="valeur">Valeur : </label>
	<input type="number" name="valeur" id="valeur" value="${number}"/>
	
	<label for="limite">Limite : </label>
	<input type="number" name="limite" id="limite" />	
	<input type="submit"/>
</form>

<ul>

<c:forEach var="ligne" items="${ table.table }" varStatus="status">
	<li><c:out value="${ table.valeur }"/> * ${ status.count } = ${ ligne }</li>
</c:forEach>

</ul>

</body>
</html>