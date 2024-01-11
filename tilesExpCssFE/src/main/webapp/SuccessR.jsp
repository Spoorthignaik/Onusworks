<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success page</title>
</head>
<body background="html_img1.png" style="background-repeat: no-repeat; background-size:100%; background-size: cover;">
	
	<div align="center"><h1>Welcome</h1>
	<h3>Account Created Succesfully......</h3>
	

		<form>
		
		<table>
		
			<tr><td><label>User Name :</label></td><td><input style=" border-radius: 50vw;" style=" border-radius: 50vw;" type="text" value="<%= session.getAttribute("username") %>"></td></tr>
			<tr><td><label>Password :</label></td><td><input style=" border-radius: 50vw;" style=" border-radius: 50vw;" type="text" value="<%= session.getAttribute("password") %>"></td></tr>
				</table>
				<br>
			
 		<a href="http://localhost:8080/tilesExp/LoginForm.jsp"><input type="button"  style="
							  background-color: crimson; 
							  border: none;
							  width:7%;
							  color: white;
							  align-items:center;
							  padding: 5px 10px;
							  text-align: center;
							  text-decoration: none;
							  display: inline-block;
							  font-size: 15px;  border-radius: 50vw;" value="Sign In" /></a>
							  <br><br>

	</form>
	
		
</div>

</body>
</html>


