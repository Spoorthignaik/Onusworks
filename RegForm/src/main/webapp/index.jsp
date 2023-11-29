<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <h1>Registration From</h1>
	<html:form action="reg" method="post">
		<table>
			<tr>
				<td>ID</td>
				<td><html:text property="id" /></td>
				<td><html:errors property="id_e"/></td>
			</tr>
			<tr>
				<td>NAME</td>
				<td><html:text property="name" /></td>
				<td><html:errors property="name_e"/></td>
			</tr>
			<tr>
				<td>EMAIL</td>
				<td><html:text property="email" /></td>
				<td><html:errors property="email_e"/></td>
			</tr>
			<tr>
				<td>ADDRESS</td>
				<td><html:textarea property="address" /></td>
				<td><html:errors property="address_e"/></td>
			</tr>
			<tr>
				<td>GENDER:MALE</td>
				<td><html:radio property="gender" value="Male" /></td>
				<td><html:errors property="gender_e"/></td>
			</tr>
			<tr>
				<td>GENDER:FEMALE</td>
				<td><html:radio property="gender" value="female" /></td>
				<td></td>
			</tr>
			<tr>
				<td>HOBBIES</td>
				<td><html:checkbox property="hobbies" value="hobbies1" />Watching Movies</td>
				<td><html:errors property="hobbies_e"/></td>
			</tr>
			<tr>
				<td></td>
				<td><html:checkbox property="hobbies" value="hobbies2" />Reading Books</td>
				<td></td>
			</tr>

			<tr>
				<td></td>
				<td><html:submit value="Register" /></td>
				<td></td>
			</tr>

		</table>
	</html:form>

</body>
</html>