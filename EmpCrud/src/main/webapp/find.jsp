<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.util.List"%>
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
   %>
  
  ID               NAME            EMAIL          ADDRESS
 <%=l.get(0)%>   <%=l.get(1)%>   <%=l.get(2)%>   <%=l.get(3)%>
 </pre>
</body>
</html>