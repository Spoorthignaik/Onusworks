<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
    <%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>I18N</title>
</head>
<body>

   <div style="border-color:green; color:red; font-size:50">
     <h1>
      <center>
         <bean:message key="title"/>   
     </h1>
      </center>
    </div>  

     <html:form action="reg">
    <center>
        <table>
            <tr>
                <td><bean:message key="id"/></td>
                <td><html:text property="id"/></td>
            </tr>
            <tr>
                <td><bean:message key="name"/></td>
                <td><html:text property="name"/></td>
            </tr>
            <tr>
                <td><bean:message key="email"/></td>
                <td><html:text property="email"/></td>
            </tr>
            <tr>
                <td><bean:message key="address"/></td>
                <td><html:text property="address"/></td>
            </tr>
            <tr>
                <td></td>
                <td><html:submit><bean:message key="submit"/></html:submit></td>
            </tr>
        </table>

        <a href="./changelang.do?language=te">Telugu</a>
        <a href="./changelang.do?language=ta">Tamil</a>
        <a href="./changelang.do?language=hi">Hindi</a>
        <a href="./changelang.do?language=en">English</a>
    </center>
</html:form>

   

</body>
</html>