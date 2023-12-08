<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page language="java" %>
   <%--   <%@taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles"%> --%>
   <%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<tiles:insert page="/Layout.jsp" flush="true">
   <tiles:put name="title" type="string" value="Welcome Page" />
   <tiles:put name="header" value="/header.jsp" />
   <tiles:put name="menu" value="/menu.jsp" />
   <tiles:put name="body" value="/body.jsp" />
   <tiles:put name="footer" value="/footer.jsp" />
</tiles:insert>

</body>
</html>