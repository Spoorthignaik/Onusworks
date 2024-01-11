<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
<style>
/* table, th {
  border:1px solid black;
} */
</style>
<body>

<h2>Employment Details</h2><hr><br>

<html:form action="register">
	<table >
	 
	 
	   <tr> <td>Employee Name</td><td><html:text property="e_name"></html:text></td></tr>
	   <tr> <td>E-mail</td><td><html:text property="email"></html:text></td></tr>
	   <tr> <td>Gender</td> <td><html:text property="gender"></html:text> </td></tr>
	  <tr>  <td>D.O.B</td><td><html:text property="dob"></html:text></td></tr>
	   <tr> <td>Designation</td><td><html:text property="designation"></html:text> </td></tr>
	   <tr> <td>State</td><td><html:text property="state"></html:text></td></tr>
	  <tr>  <td>City</td><td><html:text property="city"></html:text> </td></tr>
	   <tr> <td>Mobile No</td><td><html:text property="mobile"></html:text> </td></tr>
	  <tr>  <td>Landline</td><td><html:text property="landline"></html:text> </td></tr>
	   <tr> <td>Zip Code</td> <td><html:text property="zip"></html:text></td></tr>
	   <tr> <td>Pay /hour</td> <td><html:text property="pay"></html:text> </td></tr>
	    
	 
	 
	</table>
	
</html:form>

</body>
</html>

