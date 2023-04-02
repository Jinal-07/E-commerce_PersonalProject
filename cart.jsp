<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>

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
			  margin:0px 0px 0px 200px;
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
			
			.buttonremovefromcart {
			  background-color: white;
			  color: black;
			  padding: 12px 15px;
			  margin:0px 0px 0px 200px;
			  border: 2px solid black;
			  border-radius: 8px;
			  cursor: pointer;
			  width: 20%;
			}
			
			.buttonpurchase {
			  align-content: center;
			  text-align: center;
			  background-color: Black;
			  color: white;
			  padding: 14px 20px;
			  margin:0px 0px 0px 510px;
			  border: none;
			  cursor: pointer;
			  width: 20%;
			  border-radius: 8px;
			}
			
			.imgcontainer {
			  margin: 0px 0 0px 10px;
			}
			
			.logocontainer {
			  margin: 20px 0 12px 530px;
			}
			
			img.avatar {
			  width: 40%;
			  border-radius: 50%;
			}

			.container {
			  padding: 16px;
			}
			
		</style>

</head>
<body>
	
	<div class="logocontainer">
	    <img style="height:150px; width:200px;" src="<c:url value="/resources/image/eCommerceLogo.PNG"/>" alt="Logo">
	</div>
	
	<c:forEach items="${itemDetails}" var="bd">

		<form action="<c:url value="/login"/>" method="post">
		  <div class="container">
		  	<div class="imgcontainer">
	    		<img style="height:270px; width:280px;" src="<c:url value="/resources/image/${bd.itemimage}"/>" alt="Logo">
	  		</div>
		  	<div style="margin:5px 0px 0px 10px;">
		    	<label for="uname" ><b>Item Name: </b></label>
		    	<c:out value="${bd.itemname}"></c:out>
		    </div>
		    <div style="margin:5px 0px 0px 10px;">
		    	<label for="uname"><b>Price: </b></label>
		    	<c:out value="${bd.itemprice}"></c:out>
		    </div>
		    <input style="margin:5px 0px 0px 10px;" class="buttonremovefromcart" type="button" onclick="location.href='http://localhost:8083/springECommerse/removefromcart?itemid=<c:out value="${bd.itemid}"></c:out>';" value="Remove from cart"/>
			<c:if test="${error=='invalid'}">
				<label style="color:red; margin:20px 0px 0px 0px;">Incorrect Username or Password.</label><br>
		    </c:if>  
		  </div>
		</form>
</c:forEach>

<input style="margin:0px 0px 10px 515px;" class="buttonpurchase" type="button" onclick="location.href='http://localhost:8083/springECommerse/purchase';" value="Purchase"/>

</body>
</html>