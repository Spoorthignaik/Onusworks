<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
</head>
<body>
	<html:form action="login" method="post">
		<table>
			<tr>
				<td>
					<label for="username">UserName :</label>
				</td>
				<td>
					<html:text property="user_name" />
				</td>
			</tr>
			<tr>
				<td>
					<label for="email">E-mail :</label>
				</td>
				<td>
					<html:text property="email" />
				</td>
			</tr>
			<tr>
				<td>
					<label for="password">Password:</label>
				</td>
				<td>
					<html:password property="password"  />
				</td>
			</tr>
		    <tr>
				<td>
					<html:reset value="Reset"/>
				</td>
			    <td>
					<html:submit value="Login" />
				</td>
			</tr>
		</table>
	</html:form>
</body>
</html>