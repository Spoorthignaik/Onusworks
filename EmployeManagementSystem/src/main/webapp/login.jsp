<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System</title>
</head>
<body>

<h1>Login Form</h1>

<html:form action="login">

  <pre>
UserName :<html:text property="uname"/> <html:errors property="uname"/>
Password :<html:text property="pwd"/>   <html:errors property="pwd"/>
Role :    <html:select property="role">  <html:errors property="role"/>
            <html:option value="admin">Admin</html:option>
            <html:option value="employee">Employee</html:option>
            <html:option value="user">User</html:option>
          </html:select>
       
       <html:submit value="Login"></html:submit>   
  </pre>
</html:form>
</body>
</html>