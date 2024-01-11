<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
	<style>
	input 
	{
	  width: 10%;
	  padding: 2px 5px;
	  margin: 4px 6px;
	  box-sizing: content-box;
	  align-content: left;
	   border-radius: 25px;
	}
		
</style>
<body background="html_img1.png" style="background-repeat: no-repeat; background-size:100%; background-size: cover;">
	<h2 align="center" >Welcome To the Application....</h2>
	 <marquee behavior="scroll" direction="right" scrollamount="12"><p>Today's date: <%= (new java.util.Date()).toLocaleString()%></p>
</marquee>
	 
	<a href="http://localhost:8080/tilesExp/RegisterForm.jsp"><html:reset style="
							  background-color: blue; 
							  border: none;
							  width:7%;
							  color: white;
							  align-items:center;
							  padding: 5px 10px;
							  text-align: center;
							  text-decoration: none;
							  display: inline-block;
							  font-size: 15px;" value="Sign Up" /></a></td></tr>	
	<hr>
	<br><br><br><br><br>
	<div style="text-align: center;">
	<html:form action="/login" focus="userName">
	<tr><td>
	<h2><u>Please login to continue.....</u></h2><br><br>
	<label>Username :</label></td></tr><td> <html:text property="userName" /></td>
	<br><br>
		
	<tr><td> <label>Password :</label> </td><td><html:password property="password" /></td>
		</tr>
		<br><br>
            	<tr><td><html:reset style="
							  background-color: blue; 
							  border: none;
							  width:5%;
							  color: white;
							  align-items:center;
							  padding: 5px 10px;
							  text-align: center;
							  text-decoration: none;
							  display: inline-block;
							  font-size: 15px;" value="Reset" />		  
					</td>
	            	<td><html:submit style="
							 background-color: blue;
							  border: none;
							  width:5%;
							  color: white;
							  align-items:center;
							  padding: 5px 10px;
							  text-align: center;
							  text-decoration: none;
							  display: inline-block;
							  font-size: 15px;"	value="Login"/>
					</td>
		</tr>
	          
	</html:form>	
	    </div>


</body>
</html>