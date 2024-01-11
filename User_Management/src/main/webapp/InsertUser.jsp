<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert the User</title>
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
	<h3 align="center">Insert the Data to Add the User</h3>
	<table align="center">
	    <form action="insert" method="post">
	    <tr>
                <td>
                    <label for="name">
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
							  font-size: 15px;"	type="submit" value="Add"/>
					</td>
				</tr>
	          
            <!-- <div>
            <input 
            style="
            align-content:centre;
		  background-color: crimson;
		  border: none;
		  color: white;
		  padding: 10px 15px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  font-size: 16px;	
		  border-radius: 12px" type="submit" value="Add">
		  
		  <input style="
		  align-content:centre;
		  background-color: crimson;
		  border: none;
		  color: white;
		  padding: 10px 15px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  font-size: 16px;	
		  border-radius: 12px" type="reset" value="reset">
	</div> -->
        </form>
    </table>
	
	
	</body>
</html>