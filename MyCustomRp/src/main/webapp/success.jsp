<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

       <a href="./index.jsp"><h2>Hello...<%=session.getAttribute("uname") %> </h2> Logout </a>


<pre>
   <input type="submit" value="COMPOSE" />                                      
   <input type="submit" value="INBOX" />
   <input type="submit" value="SENT" />
   <input type="submit" value="DROP" />
   <input type="submit" value="LABE1" />
   <input type="submit" value="LABE2" />

</pre>
</body>
</html>