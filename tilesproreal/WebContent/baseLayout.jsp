<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title><tiles:getAsString name="title" ignore="true" /></title>
    </head>
    <body>
        <table border="5" cellpadding="5" cellspacing="5" align="center" width=50%>
            <tr>
                <td height="50%" colspan="2">
                    <tiles:insert attribute="header" ignore="true" />
                </td>
            </tr>
            <tr>
                <td width="40%" height="550">
                    <tiles:insert attribute="menu" />
                </td>
                <td>
                    <tiles:insert attribute="body" />
                </td>
            </tr>
            <tr>
                <td height="20%" colspan="2">
                    <tiles:insert attribute="footer" />
                </td>
            </tr>
        </table>
    </body>
</html>
