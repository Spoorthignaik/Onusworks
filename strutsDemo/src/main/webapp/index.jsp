<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

                
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

   <h1>Hello Form</h1>
   
     <form action="hello">
     
       <html type="text"  name="name">
       <html:errors/>
       <html type="submit" value="click here">
     
   
     
     </form>

</body>
</html>