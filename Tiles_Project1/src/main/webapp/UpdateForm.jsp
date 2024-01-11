<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h3>Update Your Details....</h3>
	<html:form action="update" method="post">
		<table>
			<tr><td><label>Old Id :</label></td><td><html:text property="oldid"></html:text></td></tr>
			<tr><td><label>Id :</label></td><td><html:text property="id"></html:text></td></tr>
			<tr><td><label>Name :</label></td><td><html:text property="name"></html:text></td></tr>
			<tr><td><label>E-Mail :</label></td><td><html:text property="email"></html:text></td></tr>
			<tr><td><label>Place :</label></td><td><html:text property="place"></html:text></td></tr>
			<tr><td><label>Age :</label></td><td><html:text property="age"></html:text></td></tr>
			<tr><td><label>Pin Code :</label></td><td><html:text property="pincode"></html:text></td></tr>
			<tr><td><html:submit value="Update"></html:submit></td></tr>
			<tr><td><html:reset value="Reset"></html:reset></td></tr>			
		</table>
	</html:form>


</body>
</html>