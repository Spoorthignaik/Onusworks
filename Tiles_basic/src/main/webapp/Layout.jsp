<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 
   <%@taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title" ignore="true" /></title>
</head>
<body>
<p>Layout</p>
	<table border="1" cellpadding="2" cellspacing="2" align="center" width=40%>
		<tr>
			<td height="10%" colspan="2">
			<tiles:insert attribute="header" />
			</td>
		</tr>
		<tr>
			<td width="25%" height="400">
			<tiles:insert attribute="menu" />
			</td>
			<td><tiles:insert attribute="body" /></td>
		</tr>
		<tr>
			<td height="15%" colspan="2">
			<tiles:insert attribute="footer" />
			</td>
		</tr>
	</table>
</body>
</html>