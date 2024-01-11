<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All CRUD Operations</title>
</head>
	<style>
			div 
			{
				text-align: center;
			}
	
		<style>
        .horizontal_line {
            background-color: yellow;
            width: 100%;
            height: 5px;
            border-top: 5px dotted black;
            line-height: 100%;
        }
  
        .line {
            border-bottom: 2px solid black;
            margin-top: 2px;
            width: 100%;
        }
		
		
	/* 	body, html 
		{
		  height: 100%;
		  	  background-color: aquamarine;
		}
		
		.bg 
		{
		 background-color: aquamarine;
		
		  
		  height: 100%;
		
		  
		  background-position: center;
		  background-repeat: no-repeat;
		  background-size: cover;
		}
	 *//* 
		 body 
		
		{
		  background-image: url("image8.jpg");
		  background-color: #cccccc;
		    background-position: center;
		  background-repeat: no-repeat;
		  background-size: cover;
		
		}	
		 */
		 button 
		{
		  background-color: blue;
		  border: none;
		  color: white;
		  padding: 10px 15px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  font-size: 16px;	
		  border-radius: 12px
		  
		}
	</style>
<body background="image8.jpg" style="background-repeat: no-repeat; background-size:100%; background-size: cover;">
	<div>	

		<h1>User Management System</h1>
	
		
		<a href="http://localhost:8080/PersonProject/Login.jsp"><button>Go to Home</button></a>
		<br><br>
		<a href="http://localhost:8080/PersonProject/InsertUser.jsp"><button>Insert</button></a>
		<a href="http://localhost:8080/PersonProject/UpdateUser.jsp"><button>Update</button></a>
		<a href="http://localhost:8080/PersonProject/DeleteUser.jsp"><button>Delete</button></a>
		<a href="http://localhost:8080/PersonProject/SelectUser.jsp"><button>View</button></a>
				 <br> <br>
		
		<div class="line"></div>
		    		
	</div>
	
	
	 <!-- <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Users</h2></caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Country</th>
                <th>Actions</th>
            </tr>
            
        </table>
    </div>  -->
	
</body>
</html>










