<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Download Action</title>
</head>
<body>

<pre>
     <html:link action="file.do?filename=pkmovie">Download PK movie</html:link>
     
     <html:link action="file.do?filename=strutsbook">Download Struts Book</html:link>
   
     <html:link action="file.do?filename=dsimage">Download images </html:link>
     
 </pre>
</body>
</html>