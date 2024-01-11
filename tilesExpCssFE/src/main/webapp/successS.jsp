<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="html_img1.png" style="background-repeat: no-repeat; background-size:100%; background-size: cover;">
	
	
	 <div align="center">
	 	<h2>Detail Viewed......</h2>
	 
        <table border="1" cellpadding="5">
            <caption><h2>List of Users</h2></caption>
            <tr>
                <th>Id</th>  
                <th>Name</th>  
                <th>Email</th>
                <th>Place</th>
                <th>age</th>
                 <th>pincode</th>
                
            </tr>
            

          
            <tr>
                <th><%= session.getAttribute("id") %></th>  
                <th><%=session.getAttribute("name") %></th>  
                <th><%=session.getAttribute("email") %></th>
                <th><%=session.getAttribute("place") %></th>
                <th><%=session.getAttribute("age")%> </th>
                <th><%=session.getAttribute("pincode") %></th>
                
                
            </tr>
            
        </table>
    </div>
	
	
	
	
	
	
	
	
	
	

</body>
</html>