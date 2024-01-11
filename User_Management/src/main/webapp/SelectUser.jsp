<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View the User</title>
</head>
<style>
	input {
  width: 20%;
  padding: 5px 10px;
  margin: 8px 10px;
  box-sizing: content-box;
  align-content: center;
  align-self: right;
   border-radius: 25px;
}
	
</style>
<body>
	
	<%@ include file="AllUser.jsp" %>
	<div> 
	 <br><br>

		<h3>Enter the Id to View the User</h3> 
		<form action="select">
		Id : <input type="number" name="id" placeholder="Enter Here"><br><br>
		<input style="
		  background-color: crimson;
		  width:10%;
		  border: none;
		  color: white;
		  padding: 7px 7px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  font-size: 16px;	
		  border-radius: 12px"  type="submit" value="View" >
		
		 <input style="
		  background-color: crimson;
		  width:10%;
		  border: none;
		  color: white;
		  padding: 7px 7px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  font-size: 16px;	
		  border-radius: 12px" type="reset" value="reset">	
		</form>
	</div>	
</body>
</html>