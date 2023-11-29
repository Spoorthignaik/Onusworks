<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="java.util.List" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<pre>
   <%
   List l=(List)request.getAttribute("list");
   for(Object o:l){
	   out.println("\t"+o+"\t");
   }
   
   %>
  
  
 </pre>

</body>
</html>