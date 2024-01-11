<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd"><html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Form</title>

</head>
<body background="html_img1.png" style="background-repeat: no-repeat; background-size:100%; background-size: cover;">
<%-- <%@ include file="AllCrud.jsp" %>
 --%>	<h1>&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;Insert Your Details....</h1>
 
	<html:form action="insert" method="post">
		<table>
			<tr><td><label>&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;Id :</label></td><td><html:text style=" border-radius: 50vw;" property="id"></html:text></td></tr>
			<tr><td><label>&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;Name :</label></td><td><html:text style=" border-radius: 50vw;" property="name"></html:text></td></tr>
			<tr><td><label>&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;E-Mail :</label></td><td><html:text style=" border-radius: 50vw;" property="email"></html:text></td></tr>
			<tr><td><label>&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;Place :</label></td><td><html:text style=" border-radius: 50vw;" property="place"></html:text></td></tr>
			<tr><td><label>&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;Age :</label></td><td><html:text style=" border-radius: 50vw;" property="age"></html:text></td></tr>
			<tr><td><label>&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;Pin Code :</label></td><td><html:text style=" border-radius: 50vw;" property="pincode"></html:text></td></tr>
			<br>
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
							  font-size: 15px; border-radius: 50vw;" value="Add"></html:submit></td></tr>			
		</table>
	</html:form>
</body>
</html>