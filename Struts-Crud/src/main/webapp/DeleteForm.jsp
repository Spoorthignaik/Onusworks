<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete page</title>
</head>
<body background="image3.png" style="background-repeat: no-repeat; background-size:100%; background-size: cover;">
<%@ include file="AllCrud.jsp" %>
<h3>Delete Your Details....</h3>
	<html:form action="delete" method="post">
		<table>

			<tr><td><label>Enter your Id to delete the Details :</label></td><td><html:text property="id"></html:text></td></tr>
						<tr><td><html:submit value="Delete"></html:submit></td></tr>
			<tr><td><html:reset value="Reset"></html:reset></td></tr>			
		</table>
	</html:form>


</body>
</html>