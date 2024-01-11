<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style >input{background-color: #FFB6D7;}
</style>
</head>
<body>
	<div align="center"  style="font-weight:bold; color: #C10037;font-size: 300%"><u>Struts-Tiles User Management</u></div>
	<table>
		<tr>
			
		 <td><a  href="http://localhost:8080/tilesExp/index.jsp" /><html:submit style="
							  background-color: #C10037; 
							  border: none;
							  width:100%;
							  color: white;
							  align-items:center;
							  padding: 5px 10px;
							  text-align: center;
							  text-decoration: none;
							  display: inline-block;
							  font-size: 15px; border-radius: 50vw;" value="Home" /></td>
			<td><a  href="http://localhost:8080/tilesExp/" /><html:submit style="
							  background-color: #C10037; 
							  border: none;
							  width:100%;
							  color: white;
							  align-items:center;
							  padding: 5px 10px;
							  text-align: center;
							  text-decoration: none;
							  display: inline-block;
							  font-size: 15px; border-radius: 50vw;" value="Logout" /></td>
							  <td><a  href="http://localhost:8080/tilesExp/RegisterForm.jsp" /><html:submit style="
							  background-color: #C10037; 
							  border: none;
							  width:100%;
							  color: white;
							  align-items:center;
							  padding: 5px 10px;
							  text-align: center;
							  text-decoration: none;
							  display: inline-block;
							  font-size: 15px; border-radius: 50vw;" value="Create Account" /></td>
							  
							  <td><a  href="http://localhost:8080/tilesExp/SelectAll.jsp" /><html:submit style="
							  background-color: #C10037; 
							  border: none;
							  width:100%;
							  color: white;
							  align-items:center;
							  padding: 5px 10px;
							  text-align: center;
							  text-decoration: none;
							  display: inline-block;
							  font-size: 15px; border-radius: 50vw;" value="View All" /></td>
							  </tr>	
							  
							  
					
	</table>
</body>
</html>