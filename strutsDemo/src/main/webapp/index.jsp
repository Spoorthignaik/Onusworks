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
   
     <html:form action="hello">
     
       <html:text property="name"/>
            

      
       
       <html:submit value="click here"/>
     
   
     
    </html:form>

</body>
</html>