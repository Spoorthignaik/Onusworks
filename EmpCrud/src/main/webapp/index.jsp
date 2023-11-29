<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://struts.apache.org/tags-bean"  prefix="bean"%>
    <%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee CRUD</title>
</head>
<body>

<h1><bean:message key="title"/></h1>

   <html:form action="empcrudform">
     <pre>
       <bean:message key="id"/>   <html:text property="id"/>
       <bean:message key="name"/> <html:text property="name"/>
       <bean:message key="email"/> <html:text property="email"/>
       <bean:message key="address"/> <html:textarea property="address"/>
       <html:text property="submit"><bean:message key="save"/></html:text>
       <html:text property="submit"><bean:message key="update"/></html:text>
       <html:text property="submit"><bean:message key="delete"/></html:text>
       <html:text property="submit"><bean:message key="find"/></html:text>
       <html:text property="submit"><bean:message key="findAll"/></html:text>
     
       <a href="./changelang.do?lang=en">English</a>
       <a href="./changelang.do?lang=hi">hindi</a>
     </pre>
   
   </html:form>

</body>
</html>