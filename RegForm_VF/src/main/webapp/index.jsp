<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Validation Form</title>
</head>
<body>

   <h1>Registration From</h1>
   <html:form action="reg"  method="post">
   <html:javascript formName="RF"/>
<pre>
id :     <html:text property="id"/> <html:errors property="id"/>
Name :   <html:text property="name"/> <html:errors property="name"/>  
Email :  <html:text property="email"/> <html:errors property="email"/>
Salary : <html:text property="salary"/> <html:errors property="salary"/>
CreditCard : <html:text property="creditcard"/> <html:errors property="creditcard"/>
Phone :  <html:text property="phone"/> <html:errors property="phone"/>

         <html:submit value="Submit"/>
    </pre>     
  </html:form>  
     
</body>
</html>