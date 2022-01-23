<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	
	<style type="text/css">

	.btn btn-dark{
		
		width:40px;		
	
	}
</style>
</head>
<body style="background-color:#28282B;">
		
		 <div style="background-color:black; text-align: center; width: 50%;margin:auto;height: 400px;margin-top: 100px;border-radius: 10px;padding-top:90px;">
        <h2 style="color: white ">Admin Login</h2>
        <br>
        <form:form action="Login" method="post" modelAttribute="user">
            <form:label path="userLoginId" cssStyle="color:white"><b>Login-Id:&nbsp;</b></form:label>
            <form:input path="userLoginId"/>
             <br><br>
            <form:label path="userPassword" cssStyle="color:white"><b>Password:&nbsp;</b></form:label>
            <form:password path="userPassword"/>     
			
			<br><br>
			                 
            <form:button type="submit" id="btn" class="btn btn-primary btn-lg">Login</form:button>
        </form:form>
    </div>
		
</body>
</html>