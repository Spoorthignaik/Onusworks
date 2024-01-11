<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert the User</title>
</head>
<style>
	input 
	{
  width: 20%;
  padding: 2px 1px;
  margin: 4px 6px;
  box-sizing: content-box;
  align-content: center;
  align-self: right;
   border-radius: 25px;
		}
	
</style>
<body>
	
	<%@ include file="AllUser.jsp" %>
	<h3 align="center">Insert the Data to Add the User</h3>
	<table>
	<form action="insert" method="post" >
	<div>
	
	<label>Id  :</label>   
	<input type="number" name="id" placeholder="Enter Here" align="left"><br><br>
	Name: <input type="text" name="name" placeholder="Enter Here" align="left"><br><br>
	Email :  <input type="text" name="email" placeholder="Enter Here" align="left"><br><br>
	Country: <input type="text" name="country" placeholder="Enter Here" align="left"><br><br><br>
	<input style="
		  background-color: crimson;
		  border: none;
		  color: white;
		  padding: 10px 15px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  font-size: 16px;	
		  border-radius: 12px" type="submit" value="Add">
		  
		  <input style="
		  background-color: crimson;
		  border: none;
		  color: white;
		  padding: 10px 15px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  font-size: 16px;	
		  border-radius: 12px" type="reset" value="reset">
	
	<br>
	<br>
	<br>
	
	</form>
	</table>
	</div>
</body>
</html>