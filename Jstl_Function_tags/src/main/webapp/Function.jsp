<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Function page</title>
</head>
<body>
	<h1>Function tags</h1>
		<c:set var="name" value="HELLO WORLD"></c:set>
		<h2>The Length of the <c:out value="${name }"></c:out> is = <c:out value="${fn:length(name)}"></c:out></h2>	
		<h3><c:out value="${fn:toLowerCase(name) }"></c:out></h3>
			<h3><c:out value="${fn:contains(name,'ELLO') }"></c:out></h3>
			
</body>
</html>