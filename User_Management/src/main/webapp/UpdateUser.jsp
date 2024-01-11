<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update the User</title>
</head>
<style>
	div 
	{
	  width: 100%;
	  padding: 2px 1px;
	  margin: 4px 6px;
	  box-sizing: content-box;
	  align-content: center;
	  align-self: right;
	  border-radius: 25px;
	}
	input
	{
	  width: 100%;
	  padding: 2px 1px;
	  margin: 4px 6px;
	  box-sizing: content-box;
	  align-content: center;
	  align-self: right;
	   border-radius: 25px;
	}
</style>
<body>
	
	<%@ include file="AllUser.jsp" %>
	<h3 align="center">Update the User Data by reffering to Old Id</h3>
	<table align="center">
	    <form action="update" method="post">
	    <tr>
      	    <td>
        
                    <label for="id">
                        Old Id :
                    </label>
                </td>
                <td><input type="text" name="id" placeholder="Enter Here"/>
                </td>
            </tr>
	    <tr>
                <td>
                    <label for="id">
                        Id :
                    </label>
                </td>
                <td><input type="text" name="id" placeholder="Enter Here"/>
                </td>
            </tr>
            
            <tr>
                <td>
                    <label for="name">
                        Name :
                    </label>
                </td>
                <td><input type="text" name="name" placeholder="Enter Here"/>
                </td>
            </tr>
            <tr>
                <td><label for="email">
                        Email :
                    </label>
                </td>
                <td><input type="text" name="email" placeholder="Enter Here"/>
                </td>
            </tr>
            <tr>
                <td><label for="country">
                        Country :
                    </label>
                </td>
                <td><input type="text" name="country" placeholder="Enter Here"/>
                </td>
            </tr>
             <tr>
                <td><label for="password">
                        Password :
                    </label>
                </td>
                <td><input type="password" name="password" placeholder="Enter Here"/>
                </td>
            </tr>
           
          	<tr>
	            	<td><input style="
							  background-color: crimson;
							  border: none;
							  width:50%;
							  color: white;
							  align-items:center;
							  padding: 5px 10px;
							  text-align: center;
							  text-decoration: none;
							  display: inline-block;
							  font-size: 15px;" type="reset" value="Reset" />		  
					</td>
	            	<td><input style="
							  background-color: crimson;
							  border: none;
							  width:50%;
							  color: white;
							  align-items:center;
							  padding: 5px 10px;
							  text-align: center;
							  text-decoration: none;
							  display: inline-block;
							  font-size: 15px;"	type="submit" value="Update"/>
					</td>
				</tr>
	          
			
        </form>
    </table>
    
    
    
	
</body>
</html>