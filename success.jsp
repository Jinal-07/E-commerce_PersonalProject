<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>

	<style type="text/css">
	
			body {
			  font-family: Arial, Helvetica, sans-serif;
			  align-content: center;
			  margin:10px 0px 0px 130px;
			}
			
			.logocontainer {
			  margin: 20px 0 12px 530px;
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
			
			.buttongohome {
			  align-content: center;
			  text-align: center;
			  background-color: Black;
			  color: white;
			  padding: 12px 15px;
			  margin:0px 0px 0px 510px;
			  border: none;
			  cursor: pointer;
			  width: 10%;
			  border-radius: 8px;
			}
		
	</style>

</head>
<body>
	<div class="logocontainer">
	    <img style="height:150px; width:200px;" src="<c:url value="/resources/image/eCommerceLogo.PNG"/>" alt="Logo">
	</div>
	
	<h1 style="color:green; margin:20px 0px 0px 420px;"><b>Order placed successfully!!</b></h1>
	
	<input style="margin:20px 0px 0px 570px;" class="buttongohome" type="button" onclick="location.href='http://localhost:8083/springECommerse/index';" value="Go to home"/>
</body>
</html>