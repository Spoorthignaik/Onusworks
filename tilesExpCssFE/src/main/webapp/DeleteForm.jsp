<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd"><html>
<head>
<meta charset="ISO-8859-1">
<title>Delete page</title>
</head>
<body background="html_img1.png" style="background-repeat: no-repeat; background-size:100%; background-size: cover;">
<%-- <%@ include file="AllCrud.jsp" %>
 --%><h1>&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;Delete Your Details....</h1>
	<html:form action="delete" method="post">
		<table>
			<tr><td><label>&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;Enter your Id to delete the Details :</label></td><td><html:text style=" border-radius: 50vw;" property="id"></html:text></td></tr>
			<tr><td>&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;<html:reset style="
							  background-color: blue; 
							  border: none;
							  width:20%;
							  color: white;
							  align-items:center;
							  padding: 5px 10px;
							  text-align: center;
							  text-decoration: none;
							  display: inline-block;
							  font-size: 15px; border-radius: 50vw;" value="Reset"></html:reset></td>									
						<td><html:submit style="
							  background-color: blue; 
							  border: none;
							  width:50%;
							  color: white;
							  align-items:center;
							  padding: 5px 10px;
							  text-align: center;
							  text-decoration: none;
							  display: inline-block;
							  font-size: 15px; border-radius: 50vw;" value="Delete"></html:submit></td></tr>
		</table>
	</html:form>


</body>
</html>