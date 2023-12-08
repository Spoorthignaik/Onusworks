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
<h1>Admin Success & Register</h1>

    <html:form action="adminupdate">
       <pre>
         Old_Uname :<html:text property="ouname"/>
         New_Uname :<html:text property="nuname"/>
         Old_pwd   :<html:text property="opwd"/>
         New_pwd   :<html:text property="npwd"/>
         
         <html:submit value="ADMIN_UPDATE"></html:submit>
       
       </pre>
    
    </html:form>
 
</body>
</html>