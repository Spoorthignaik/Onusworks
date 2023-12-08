<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title><tiles:getAsString name="title" ignore="true" /></title>
</head>
<body>
<p>sign In</p>
	<table border="1" cellpadding="5" cellspacing="5" align="center">
		<tr>
			<td height="10%" colspan="2">
			<tiles:insert attribute="header" />
			</td>
		</tr>
		<tr>
			<td width="25%" height="250">
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