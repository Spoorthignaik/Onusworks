<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Form</title>
</head>
<body>
	<h1>Student Registration Form</h1>
	
	
	<html:form action="student" method="post">
	
	    Name :     <html:text property="name" /><br><html:errors property="name_e"/>
		Email :  <html:text property="email" /><br><html:errors property="email_e"/>
		Address :<html:textarea property="address" /><br><html:errors property="address_e"/>
		<html:submit value="Register" />
	
	</html:form>

</body>
</html>