<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success page</title>
</head>
<body background="html_img1.png" style="background-repeat: no-repeat; background-size:100%; background-size: cover;">
	<div align="center"><h2>welcome</h2>
	<h3>The data you have filled is successfully inserted </h3>
	<form>
		<table>
			<tr><td><label>Id :</label></td><td><input style=" border-radius: 50vw;" type="text" value="<%= session.getAttribute("id") %>"></td></tr>
			<tr><td><label>Name :</label></td><td><input style=" border-radius: 50vw;" type="text" value="<%= session.getAttribute("name") %>"></td></tr>
			<tr><td><label>E-Mail :</label></td><td><input style=" border-radius: 50vw;" type="text" value="<%= session.getAttribute("email") %>"></td></tr>
			<tr><td><label>Place :</label></td><td><input style=" border-radius: 50vw;" type="text" value="<%= session.getAttribute("place") %>"></td></tr>
			<tr><td><label>Age :</label></td><td><input style=" border-radius: 50vw;" type="text" value="<%= session.getAttribute("age") %>"></td></tr>
			<tr><td><label>Pin Code :</label></td><td><input style=" border-radius: 50vw;" type="text" value="<%= session.getAttribute("pincode") %>"></td></tr>
		</table>
	</form></div>

</body>
</html>