<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isErrorPage="true"  %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Something went wrong........</title>
<style>
	*
	{
	 padding: 10px;
	 margin: 5px;
	}
</style>
</head>
<body>
<div style="padding: 20px; color: green; background-color: yellow;">
	<h1>you have Empty Data.......</h1>
	<p><%= exception %></p>
</div>
</body>
</html>