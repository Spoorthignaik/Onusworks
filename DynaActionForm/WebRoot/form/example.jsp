<%@ page language="java"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>

<html> 
	<head>
		<title>DynaAction_form_Example</title>
	</head>
	<body>
		<html:form action="/example">
			<html:errors /> <br>
			Name: <html:text property="name" /> <br>
			Age: <html:text property="age" /> <br>			
			<html:submit value="Send"/>
		</html:form>
	</body>
</html>
