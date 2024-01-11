<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete the User</title>
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

		<h3>Insert the ID to delete the data from the database</h3> 
		<form action="delete">
		Id : <input type="number" name="id" placeholder="Enter Here"><br><br>
		<input style="
		  background-color: crimson;
		  border: none;
		  color: white;
		  padding: 10px 15px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  font-size: 16px;	
		  border-radius: 12px"  type="submit" value="Delete" >
		
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