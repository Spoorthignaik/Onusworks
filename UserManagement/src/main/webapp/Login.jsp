<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
	<style>
	input 
	{
	  width: 100%;
	  padding: 2px 5px;
	  margin: 4px 6px;
	  box-sizing: content-box;
	  align-content: center;
	  align-self: right;
	   border-radius: 25px;
	}
		
		
		
    }
</style>
<body background="image8.jpg" style="background-repeat: no-repeat; background-size:100%; background-size: cover;">
	<h3>Welcome to User-Management System....</h3>
	<h5>Please Login to Continue.</h5>
	<div style="text-align: right;">
	<form action="login" method="post">
	    <table align="center">
	            <tr>
	                <td> <label for="user_name" > <h3>User Name :</h3> </label>  </td>
	                <td><input type="text" name="user_name" placeholder="Enter here"/> </td>
	            </tr>
	            <tr>
	                <td><label for="password"><h3> Password :</h3></label></td>
	                <td><input type="password" name="password" placeholder="Enter here"/></td>
	            </tr>
	            <tr>
	            	<td><input style="
							  background-color: crimson;
							  border: none;
							  width:50%;
							  color: white;
							  align-items:center;
							  padding: 5px 10px;
							  text-align: center;
							  text-decoration: none;
							  display: inline-block;
							  font-size: 15px;" type="reset" value="Reset" />		  
					</td>
	            	<td><input style="
							  background-color: crimson;
							  border: none;
							  width:50%;
							  color: white;
							  align-items:center;
							  padding: 5px 10px;
							  text-align: center;
							  text-decoration: none;
							  display: inline-block;
							  font-size: 15px;"	type="submit" value="Login"/>
					</td>
				</tr>
	          
	         
	    	</table>
	      </form>
	    </div>

</body>
</html>