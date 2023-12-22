 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page language="java" %>
   <%--   <%@taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles"%> --%>
   <%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" ignore="true" /></title>
</head>
<body>
	<table  width="900" cellspacing="0" align="center">
	<tr>
		<td colspan="2" bgcolor="#1D1D1B">
			 <tiles:insertAttribute name="header" />
		</td>
	</tr>
	
	<tr height="300">			 
		<td width="150" valign="top" bgcolor="#988131">
			 <tiles:insertAttribute name="menu" />
		 </td>
		 <td width="750" valign="middle"  align="center">
   				<tiles:insertAttribute name="body" />
		</td>			
	</tr>
	
	<tr>
		<td colspan="2" width="900" height="70" bgcolor="#9B1B56">
			 <tiles:insertAttribute name="footer" /><br/>
		</td>
	</tr>
	</table>     
</body>
</html>
