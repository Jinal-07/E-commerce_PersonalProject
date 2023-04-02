<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Registration Page</title>
    
		<style>
			body {font-family: Arial, Helvetica, sans-serif;}
			form {border: 3px solid white;
			width : 70%;
			margin : 30px 200px;
			hei
			}
			
			input[type=text], input[type=password] {
			  width: 80%;
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
			
			span.password {
			  float: right;
			  padding-top: 16px;
			}
			
		</style>
    
  </head>
  <body>
    	
    	<form action="<c:url value="/registerPost"/>" method="post">
    	
			  <div class="imgcontainer">
			    <img style="height:150px; width:200px;" src="<c:url value="/resources/image/eCommerceLogo.PNG"/>" alt="Logo">
			  </div>
			
			  <div class="container">
			    <label for="username"><b>Username</b></label>
			    <input style="margin:0px 0px 0px 85px;" type="text" placeholder="Enter Username" name="username"><br>
			    <c:if test="${error=='usernamecannotbeblank'}">
					<label style="color:red; margin:20px 0px 0px 170px;">Username should not be blank.</label><br>
			    </c:if>
			
			    <label for="password"><b>Password</b></label>
			    <input style="margin:20px 0px 0px 85px;" type="password" placeholder="Enter Password" name="password"><br>
				<c:if test="${error=='blankpassword'}">
					<label style="color:red; margin:20px 0px 0px 170px;">Password should not be blank.</label><br>
			    </c:if>
			
			    
			    <label for="confirmpassword"><b>Confirm Password</b></label>
			    <input style="margin:20px 0px 0px 20px;" type="password" placeholder="Confirm Password" name="confirmpassword"><br>
				<c:if test="${error=='passwordsdontmatch'}">
					<label style="color:red; margin:20px 0px 0px 170px;">Passwords Don't match.</label><br>
			    </c:if>
			    
			    <button style="margin:20px 0px 0px 300px; border-radius: 8px;" type="submit">Register</button>
  			  </div>
  			  
    		<%-- <div class="imgcontainer">
	    		<img style="height:150px; width:200px;" src="<c:url value="/resources/image/logo.PNG"/>" alt="Logo">
	  		</div>
		  <div class="form-group">
		    <label for="username">Username</label>
		    <input type="text" id="username" placeholder="Enter username" name="username">
		  </div>
		  <div class="form-group">
		    <label for="password">Password</label>
		    <input type="password" id="password" placeholder="Enter password" name="password">
		  </div>
		  <div class="form-group">
		    <label for="confirmpassword">Re-enter password</label>
		    <input type="password" id="confirmpassword" placeholder="Re-enter password" name="confirmpassword">
		  </div>
		  <button type="submit">Register</button> --%>
		  
		</form>
    
  </body>
</html>