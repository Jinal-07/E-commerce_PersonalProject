<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Login Page</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid white;
width : 70%;
margin : 30px 200px;
hei
}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: Black;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 40%;
}

button:hover {
  opacity: 0.8;
}

a:hover{
	opacity: 0.8;
}

.button {
	background-color: Black;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 40%;
  border-radius: 8px;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

</style>
  </head>
  <body>
    
<%--     <div class="container mt-5">
    	
    	<form action="<c:url value="/loginPost"/>" method="post">
		  <div>
		    <label for="username">Username</label>
		    <input type="text" id="username" placeholder="Enter username" name="username">
		  </div>
		  <div class="form-group">
		    <label for="password">Password</label>
		    <input type="password" id="password" placeholder="Enter password" name="password">
		  </div>
		  <button type="submit">Login</button>
    	  <input style="margin:0px 0px 0px 200px;" class="button" type="button" onclick="location.href='http://localhost:8083/springECommerse/register';" value="Register"/>
		</form>
    	
    </div> --%>

	<form action="<c:url value="/loginPost"/>" method="post">
	  <div class="imgcontainer">
	    <img style="height:150px; width:200px;" src="<c:url value="/resources/image/eCommerceLogo.PNG"/>" alt="Logo">
	  </div>
	  
	  <!-- <h1 style="margin:20px 0px 0px 320px;"><b>Login To E-Commerce Web-App</b></h1> -->
	
	  <div class="container">
	    <label for="username"><b>Username</b></label>
	    <input type="text" placeholder="Enter Username" name="username">
	
	    <label for="password"><b>Password</b></label>
	    <input type="password" placeholder="Enter Password" name="password">
	    <c:if test="${error=='invalid'}">
			<label style="color:red; margin:20px 0px 0px 0px;">Incorrect Username or Password.</label><br>
	    </c:if>
	        
	    <button style="border-radius: 8px;" type="submit">Login</button>
	    <input style="margin:0px 0px 0px 200px;" class="button" type="button" onclick="location.href='http://localhost:8083/springECommerse/register';" value="Register"/>
	  </div>
	
	</form>
    
  </body>
</html>