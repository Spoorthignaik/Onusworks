<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update the Users</title>
</head>
<style>
	/* input {
  width: 20%;
  padding: 5px 10px;
  margin: 8px 10px;
  box-sizing: content-box;
  align-content: center;
  align-self: right;
   border-radius: 25px;
} */

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
	<form action="update">
	<div>
	<h3>Update the Details Of the User By Entering the Id</h3>
	Old Id : <input type="number" name="oldid" placeholder="Enter Here"><br><br>
	Id  :   <input type="number" name="id" placeholder="Enter Here"><br><br>
	Name: <input type="text" name="name" placeholder="Enter Here"><br><br>
	Email :  <input type="text" name="email" placeholder="Enter Here"><br><br>
	Country: <input type="text" name="country" placeholder="Enter Here"><br><br><br>
	<input style="
		  background-color: crimson;
		  border: none;
		  color: white;
		  padding: 10px 15px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  font-size: 16px;	
		  border-radius: 12px" type="submit" value="Update">
		  
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
	</div>
</body>
</html>