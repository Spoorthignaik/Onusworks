<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd"><html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Form</title>

</head>
<body background="html_img1.png" style="background-repeat: no-repeat; background-size:100%; background-size: cover;">
<%-- <%@ include file="AllCrud.jsp" %>
 --%>	
<div align="center">
 <h1>Create Your Account........</h1>
 
 <hr width="50%"> 
 
 	<br>
 		<a href="http://localhost:8080/tilesExp/LoginForm.jsp"><html:reset style="
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
	<html:form action="register" method="post">
		<table>
			<tr><td><h3><label>User-Name :</label></h3></td><td><html:text style=" border-radius: 50vw;" property="username"></html:text></td></tr>
			<tr><td><h3><label>Password :</label></h3></td><td><html:text style=" border-radius: 50vw;" property="password"></html:text></td></tr>
				
				<tr><td><html:reset style="
							  background-color: blue; 
							  border: none;
							  width:100%;
							  color: white;
							  align-items:center;
							  padding: 5px 10px;
							  text-align: center;
							  text-decoration: none;
							  display: inline-block;
							  font-size: 15px;  border-radius: 50vw;" value="Reset" /></td>
							  <td>
			<html:submit style="
							  background-color: blue; 
							  border: none;
							  width:100%;
							  color: white;
							  align-items:center;
							  padding: 5px 10px;
							  text-align: center;
							  text-decoration: none;
							  display: inline-block;
							  font-size: 15px;  border-radius: 50vw;" value="Create"></html:submit></td></tr>			
		</table>
	</html:form>
</div>
</body>
</html>