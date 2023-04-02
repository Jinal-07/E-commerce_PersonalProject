<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>

		<style>
			body {
			  font-family: Arial, Helvetica, sans-serif;
			  align-content: center;
			  margin:10px 0px 0px 130px;
			}
			
			form {border: 3px solid white;
			width : 70%;
			margin : 30px 200px;
			}
			
			button {
			  background-color: Black;
			  color: white;
			  padding: 14px 20px;
			  margin:0px 0px 0px 130px;
			  border: none;
			  cursor: pointer;
			  width: 20%;
			}
			
			button:hover {
			  opacity: 0.8;
			}
			
			a:hover{
				opacity: 0.8;
			}
			
			.buttonaddtocart {
			  background-color: white;
			  color: black;
			  padding: 12px 15px;
			  margin:0px 0px 0px 200px;
			  border: 2px solid black;
			  border-radius: 8px;
			  cursor: pointer;
			  width: 20%;
			}
			
			.button {
			  text-align: center;
			  background-color: Black;
			  color: white;
			  padding: 14px 20px;
			  margin: 8px 0;
			  border: none;
			  cursor: pointer;
			  width: 20%;
			  border-radius: 8px;
			}
			
			.imgcontainer {
			  text-align: center;
			  margin: 24px 0 12px 0;
			}
			
			.logocontainer {
			  text-align: center;
			  margin: 20px 0 12px 0;
			}
			
			img.avatar {
			  width: 40%;
			  border-radius: 50%;
			}

			.grid-container {
			  /* padding: 16px; */
			  display: grid;
    		  grid-template-columns: 1fr 1fr;
    		  grid-gap: 5px;
			}
			
		</style>

</head>
<body>
	
	<div class="logocontainer">
	    <img style="height:150px; width:200px;" src="<c:url value="/resources/image/eCommerceLogo.PNG"/>" alt="Logo">
	</div>
	
	<input style="margin:0px 0px 0px 900px;" class="button" type="button" onclick="location.href='http://localhost:8083/springECommerse/cart';" value="Go to cart"/>
	
	<c:forEach items="${itemDetails}" var="bd">

		<form action="<c:url value="/login"/>" method="post">
		 <!-- <div class="container"> -->
		  <div class="grid-container">
		  
		  	<div class="grid-child img">
			  	<div class="imgcontainer">
		    		<img style="height:270px; width:280px;" src="<c:url value="/resources/image/${bd.itemimage}"/>" alt="Logo">
		  		</div>
	  		</div>
	  		
	  		<div class="grid-child description">
			  	<div style="margin:24px 0px 0px 5px;">
			    	<label for="uname" ><b>Item Name: </b></label>
			    	<c:out value="${bd.itemname}"></c:out>
			    </div>
			    <div style="margin:5px 0px 0px 5px;">
			    	<label for="uname"><b>Price: </b></label>
			    	<c:out value="${bd.itemprice}"></c:out>
			    </div>
			    <input style="margin:5px 0px 0px 5px;" class="buttonaddtocart" type="button" onclick="location.href='http://localhost:8083/springECommerse/addtocart?itemid=<c:out value="${bd.itemid}"></c:out>';" value="Add to cart"/>
				<c:if test="${error=='invalid'}">
					<label style="color:red; margin:20px 0px 0px 0px;">Incorrect Username or Password.</label><br>
			    </c:if>  
		    </div>
		    
		  </div>
		</form>
</c:forEach>
</body>
</html>