<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
    <%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h1><bean:message key="title"/></h1>
<html:form action="empSave">
   <pre>
     <bean:message key="id"/><html:text property="id"/><html:errors property="id"/>
     <bean:message key="name"/><html:text property="name"/><html:errors property="name"/>
     <bean:message key="email"/><html:text property="email"/><html:errors property="email"/>
     <bean:message key="salary"/><html:text property="salary"/><html:errors property="salary"/>     
  
      <html:submit property="submit"><bean:message key="register"/></html:submit>
     
   </pre>

</html:form></body>
</html>