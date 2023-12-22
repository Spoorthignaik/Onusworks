<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
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
		<td width="900" valign="middle"  align="center">
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