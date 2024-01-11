<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transational//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sql page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<h2>The Table is ......</h2>
		<sql:setDataSource driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/user_management" user="root" password="root" var="ds"/>
		<sql:query dataSource="${ds}" var="rs" >select * from user_management;</sql:query>
	
		<div class="container">		
		<table class="table">
			<tr>
				<td>ID </td>
				<td>Name</td>
				<td>Email</td>
				<td>Country</td>
				<td>Password</td>
			</tr>
		<c:forEach items="${rs.rows}" var="row" >
			<tr>
				<td><c:out value="${row.id}"></c:out></td>
				<td><c:out value="${row.name}"></c:out></td>
				<td><c:out value="${row.email}"></c:out></td>
				<td><c:out value="${row.country}"></c:out></td>
				<td><c:out value="${row.password}"></c:out></td>
			</tr>
		</c:forEach>
		</table>
		</div>
		
</body>
</html>