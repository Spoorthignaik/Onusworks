<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>To View page</title>
</head>
<body>


<h3>View Details......</h3>
	<html:form action="select" method="post">
		<table>
			<tr><td><label>Enter your Id to View the Details :</label></td><td><html:text property="id"></html:text></td></tr>
						<tr><td><html:submit value="View"></html:submit></td></tr>
			<tr><td><html:reset value="Reset"></html:reset></td></tr>			
		</table>
	</html:form>



</body>
</html>