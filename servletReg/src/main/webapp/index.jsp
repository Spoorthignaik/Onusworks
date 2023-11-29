<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Servlet Project</title>


</head>
<body>
     
     <div class="container" >
     <h1>My Form Page....</h1>
     <form  id="" action="register" method="post">
        <table>
           <tr>
           <td>Enter Your Name</td>
           <td><input type="text" name= "User_Name" placeholder="Enter Your Name" ></td>
           <tr>
           
           <tr>
           <td>Enter Your Password</td>
           <td><input type="password" name= "User_Password" placeholder="Enter Your Password" ></td>
           <tr>   
           
            <tr>
           <td>Enter Your email</td>
           <td><input type="email" name= "User_email" placeholder="Enter Your email" ></td>
           <tr> 
           
            <tr>
           <td>Select Gender</td>
           <td><input type="radio" name= "User_Gender" value="male">Male &nbsp; &nbsp; <input type="radio" name="User_Gender" value="female">Female</td>
           <tr>   
           
            <tr>
           <td>Select Your Course</td>
           <td><select name="User_course">
               <option value="Java">Java </option>
               <option value="Python">Python </option>
               <option value="Sql">Sql </option>
               <option value="DataScience">Data Science</option>
             </select>
           </td>
           <tr> 
                 
                 <tr>
                 <td style="text-align:right">
                  <input type="checkbox" value="checked" name="condition"></td>
                 <td>Agree Terms and Condition</td>
                 </tr>
                 
                 <tr>
                 <td></td>
                 <td><button type="submit">Register</td>
                 <td><button type="reset">Reset</button>
                 </tr>
        
        
        </table>
     
     </form>
     </div>
</body>
</html>