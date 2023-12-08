<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success page</title>
</head>
<body>
	<h2>welcome</h2>
	<h3>The data you have filled is successfully inserted </h3>
	<form>
		<table>
			<tr><td><label>Id :</label></td><td><input type="text" value="<%= session.getAttribute("id") %>"></td></tr>
			<tr><td><label>Name :</label></td><td><input type="text" value="<%= session.getAttribute("name") %>"></td></tr>
			<tr><td><label>E-Mail :</label></td><td><input type="text" value="<%= session.getAttribute("email") %>"></td></tr>
			<tr><td><label>Place :</label></td><td><input type="text" value="<%= session.getAttribute("place") %>"></td></tr>
			<tr><td><label>Age :</label></td><td><input type="text" value="<%= session.getAttribute("age") %>"></td></tr>
			<tr><td><label>Pin Code :</label></td><td><input type="text" value="<%= session.getAttribute("pincode") %>"></td></tr>
		</table>
	</form>

</body>
</html>