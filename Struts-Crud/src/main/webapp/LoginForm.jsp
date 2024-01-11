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
		
		
		
    }
</style>
<body background="image3.png" style="background-repeat: no-repeat; background-size:100%; background-size: cover;">
	<h3>Welcome to User-Management System....</h3>
	<h5>Please Login to Continue.</h5>
	<div style="text-align: center;">
	<html:form action="/login" focus="userName">
	<tr><td>
	Username :</td></tr><td> <html:text property="userName" /></td>
	<br><br>
		
	<tr><td>Password :</td><td><html:password property="password" /></td>
		</tr>
		<br><br>
            	<tr><td><html:reset style="
							  background-color: crimson; 
							  border: none;
							  width:10%;
							  color: white;
							  align-items:center;
							  padding: 5px 10px;
							  text-align: center;
							  text-decoration: none;
							  display: inline-block;
							  font-size: 15px;" value="Reset" />		  
					</td>
	            	<td><html:submit style="
							 background-color: crimson;
							  border: none;
							  width:10%;
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