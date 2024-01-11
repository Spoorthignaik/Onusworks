<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html;
         charset=UTF-8">
      <title>Insert page</title>
   </head>
   <body>

      <sql:setDataSource var="ds"
                         driver="com.mysql.cj.jdbc.Driver"
                         url="jdbc:mysql://localhost:3306/user_management"
                         user="root" password="root"/>


      <sql:update dataSource="${ds}" var="rs">
           DELETE FROM user_management where id=23;
      </sql:update>
<!--   INSERT INTO user_management VALUES(23, 'onsa', 'onsa@poke.com', 'country', 'password');
 -->      
      <!-- working -->
       <!-- VALUES (?,?,?,?,?) -->
        <%--  <sql:param value="${param.id}" />
         <sql:param value="${param.name}" />
         <sql:param value="${param.email}" />
         <sql:param value="${param.country}" />
         <sql:param value="${param.password}" /> --%>
     <%--  <c:if test="${rs>=1}">
         <c:redirect url="success.jsp" >
            <c:param name="msg" value="1 record inserted" />
         </c:redirect>
      </c:if> --%>
   </body>
</html>