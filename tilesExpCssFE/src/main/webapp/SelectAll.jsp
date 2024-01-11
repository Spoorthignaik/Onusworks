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
<body background="html_img1.png" style="background-repeat: no-repeat; background-size:100%; background-size: cover;">
	<marquee behavior="scroll" direction="right" scrollamount="12"><h2>All Users.....</h2></marquee>
	
	 <td><a  href="http://localhost:8080/tilesExp/index.jsp" /><html:submit style="
							  background-color: #C10037; 
							  border: none;
							  width:100%;
							  color: white;
							  align-items:center;
							  padding: 5px 10px;
							  text-align: center;
							  text-decoration: none;
							  display: inline-block;
							  font-size: 15px; border-radius: 50vw;" value="Home" /></td>
		<sql:setDataSource driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/struts_crud" user="root" password="root" var="ds"/>
		<sql:query dataSource="${ds}" var="rs" >select * from details;</sql:query>
	
		<div class="container">		
		<table class="table">
			<tr>
				 <th>Id</th>  
                <th>Name</th>  
                <th>Email</th>
                <th>Place</th>
                <th>age</th>
                 <th>pincode</th>
			</tr>
		<c:forEach items="${rs.rows}" var="row" >
			<tr>
				<td><c:out value="${row.id}"></c:out></td>
				<td><c:out value="${row.name}"></c:out></td>
				<td><c:out value="${row.email}"></c:out></td>
				<td><c:out value="${row.place}"></c:out></td>
				<td><c:out value="${row.age}"></c:out></td>
				<td><c:out value="${row.pincode}"></c:out></td>
			</tr>
		</c:forEach>
		</table>
		</div>
		
</body>
</html>