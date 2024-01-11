<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login and Upload</title>
</head>
<body style="background-color: aquamarine ;">
		<center><h1>To Upload Image Please fill the Details</h1></center>
		<hr>
	<html:form method="post" action="upload" enctype="multipart/form-data">	

	<center>
		<table>
			<tr>
				<td>User Name:</td>
				<td><html:text  property="username" size="20"
					></html:text></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><html:text property="password" size="10"
					></html:text></td>
			</tr>
			<tr>
				<td>Upload Image:</td>
				<td><html:file property="photo" size="10"
					></html:file></td>
			</tr>
			<br>
			<tr>
				
				<td><html:reset value="Reset" /></td>
				<td><html:submit value="Submit"></html:submit></td>
				
			</tr>
		</table>
		</center>
	</html:form>
	

</body>
</html>