<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Module</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</head>
<body>
  
     <div class="container">
        <div class="row">
          <div class="col m6">
             <div class="card">
               <div class="card-context">
               
               <h4>Register Here..!!</h4>
                   
             <form  action="register" method="post">
               <input type="text" name="user_name" placeholder="Enter Your Name">
               <input type="password" name="user_password" placeholder="Enter Your Password">
               <input type="email" name="user_email" placeholder="Enter Your Email">
               <button type="submit" >Click Here</button>
             
             
             </form>
               
               </div>
             </div>
          </div>   
        </div>  
     </div>
  
</body>
</html>