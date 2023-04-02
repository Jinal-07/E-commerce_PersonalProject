<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

		<style>
			body {
			  font-family: Arial, Helvetica, sans-serif;
			  align-content: center;
			  margin:10px 0px 0px 130px;
			}
			
			form {
				border: 3px solid white;
				width : 30%;
				/* margin : 30px 200px; */
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
			
			.buttonplaceorder {
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

			.grid-container {
			  /* padding: 16px; */
			  margin: 50px 0 0px 240px;
			  display: grid;
    		  grid-template-columns: 2fr 2fr;
    		  grid-gap: 0px;
			}
			
			.name{
			  margin: 0px 0 0px 32px;
			}
					
		</style>

</head>
<body>
	<div class="logocontainer">
	    <img style="height:150px; width:200px;" src="<c:url value="/resources/image/eCommerceLogo.PNG"/>" alt="Logo">
	</div>
	<%-- <c:forEach items="${itemDetails}" var="bd">

		<form action="<c:url value="/login"/>" method="post">
		  <div class="container">
		  	<div style="margin:5px 0px 0px 0px;">
		    	<label for="uname" ><b>Item Name: </b></label>
		    	<c:out value="${bd.itemname}"></c:out>
		    </div>
		    <div style="margin:5px 0px 0px 0px;">
		    	<label for="uname"><b>Price: </b></label>
		    	<c:out value="${bd.itemprice}"></c:out>
		    </div>
			<c:if test="${error=='invalid'}">
				<label style="color:red; margin:20px 0px 0px 0px;">Incorrect Username or Password.</label><br>
		    </c:if>  
		  </div>
		</form>
</c:forEach> --%>
	<div class="grid-container">

		<div class="grid-child name">
			<label for="uname" ><b>Item Name: </b></label><br><br>
			<c:forEach items="${itemDetails}" var="bd">
				<form action="<c:url value="/login"/>" method="post">
				  	<div style="margin:3px 0px 0px 0px;">
				    	<c:out value="${bd.itemname}"></c:out>
				    </div>
				</form>
			</c:forEach>
		</div>
		
		<div class="grid-child price">	
			<label for="uname"><b>Price: </b></label><br><br>
			<c:forEach items="${itemDetails}" var="bd">
				<form action="<c:url value="/login"/>" method="post">
				  	<div style="margin:3px 0px 0px 0px;">		    			
		    			<c:out value="${bd.itemprice}"></c:out>
		    		</div>
				</form>
			</c:forEach>
			
			<div style="margin:10px 0px 0px 0px;">
		    	<label for="uname"><b>Total: </b></label>
		    	<c:out value="${totalAmount}"></c:out>
		    </div>
		    
		    <div style="margin:5px 0px 0px 0px;">
		    	<label for="uname">( Mode of payment: Cash on delivery )</label>
		    </div>
		</div>
	 
	</div>



		    
<input style="margin:35px 0px 0px 480px;" class="buttonplaceorder" type="button" onclick="location.href='http://localhost:8083/springECommerse/placeorder';" value="Place order"/>

</body>
</html>