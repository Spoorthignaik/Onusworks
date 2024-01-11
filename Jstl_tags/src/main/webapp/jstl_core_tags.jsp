<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>jstl Core tags</title>
</head>
<body>
	<c:set var="j" value="-5"  scope="page"></c:set>
	<c:set var="i" value="45"  scope="page"></c:set>
	<c:out value="${i }"></c:out>
	<%-- <c:remove var="i"/> --%>
	<c:out value="${i }"></c:out>
	<h3><c:out value="${j}"></c:out></h3>
	<c:if test="${j > 0}" ><h2>True</h2></c:if> 
	<c:choose>
		<c:when test="${j < 0}" >true</c:when>
		<c:when test="${j == 0}" >its zero</c:when>
		<c:otherwise>default</c:otherwise>
		
	</c:choose>
	
	<c:forEach var="i" begin="2" end="34">
		<h2>value of i is <c:out value="${i}"></c:out></h2> 
	</c:forEach>
	
	<c:url var="myurl" value="https://www.google.com/search">
		<c:param name="q" value="hello world program"></c:param>
	</c:url>
	
	<c:redirect url="${myurl }"></c:redirect> 
	
	
	<%-- <c:redirect url="test.jsp"></c:redirect> --%>
	
	
</body>
</html>