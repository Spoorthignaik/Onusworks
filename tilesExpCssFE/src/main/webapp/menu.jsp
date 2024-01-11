<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<style>
	
	label {
	color: black;
	font-size: 200%;
	font-style: italic;
	}
	 a {
      text-decoration:none;
   }
</style>
<meta charset="ISO-8859-1">
<title>JSP Page</title>
</head>
<body background="html_img1.png" style="background-repeat: no-repeat; background-size:100%; background-size: cover;">

	<table>
	<div>
	<tr><td><a href="Link.do?method=add"><label>&emsp; &emsp;&emsp;Add</label></a><br></td></tr>
	<tr><td><a href="Link.do?method=edit"><label>&emsp; &emsp;&emsp;Edit</label></a><br></td></tr>
	<tr><td><a href="Link.do?method=delete"><label>&emsp; &emsp;&emsp;Delete</label></a><br></td></tr>
	<tr><td> <a href="Link.do?method=view"><label>&emsp; &emsp;&emsp;View</label></a><br></td></tr>
	
	
<!-- 	<tr><td> <a href="http://localhost:8080/tilesExp/"><label>Home</label></a><br></td></tr>
 -->	
	</div>
	</table>
		
</body>
</html>