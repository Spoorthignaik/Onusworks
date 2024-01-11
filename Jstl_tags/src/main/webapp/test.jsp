<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>test page</title>
</head>
<body>
		<c:out value="${i }"></c:out>
		<c:redirect url="http://www.google.com/"></c:redirect>
</body>
</html>