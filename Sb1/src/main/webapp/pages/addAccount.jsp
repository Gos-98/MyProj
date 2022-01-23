<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Account</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<style type="text/css">
@import
	url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap")
	;

* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

body {
	background-color: #353836;
	color: white;
	font-family: "Poppins", sans-serif;
}

#allhead {
	text-decoration: none;
}

#allhead:hover {
	color: white;
}

header {
	padding: 0 20px;
	background-color: #1d1f1d;
	height: 50px;
	display: flex;
	justify-content: space-between;
}

#brand {
	font-weight: bold;
	font-size: 18px;
	display: flex;
	align-items: center;
}

#brand a {
	color: #09c372;
}

ul {
	list-style: none;
	height: 100%;
	display: flex;
	align-items: center;
	justify-content: space-around;
}

ul a {
	color: white;
}

ul li {
	padding: 5px;
	margin-left: 10px;
}

ul li:hover {
	transform: scale(1.1);
	transition: 0.3s;
}

#login, #signup {
	border-radius: 5px;
	padding: 5px 8px;
}

#login {
	border: 1px solid #498afb;
}

#signup {
	border: 1px solid #ff3860;
}

#signup a {
	color: #ff3860;
}

#login a {
	color: #498afb;
}

#hamburger-icon {
	margin: auto 0;
	display: none;
	cursor: pointer;
}

#hamburger-icon div {
	width: 35px;
	height: 3px;
	background-color: white;
	margin: 6px 0;
	transition: 0.4s;
}

.open .bar1 {
	-webkit-transform: rotate(-45deg) translate(-6px, 6px);
	transform: rotate(-45deg) translate(-6px, 6px);
}

.open .bar2 {
	opacity: 0;
}

.open .bar3 {
	-webkit-transform: rotate(45deg) translate(-6px, -8px);
	transform: rotate(45deg) translate(-6px, -8px);
}

.open .mobile-menu {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: flex-start;
}

.mobile-menu {
	display: none;
	position: absolute;
	top: 50px;
	left: 0;
	height: calc(100vh - 50px);
	width: 100%;
	background-color: black;
}

.mobile-menu li {
	margin-bottom: 10px;
}

.mobile-menu a {
	text-decoration: none;
}
#submit-btn:hover
{
	cursor: pointer;
}

@media only screen and (max-width: 600px) {
	header nav {
		display: none;
	}
	#hamburger-icon {
		display: block;
	}
}
</style>
</head>
<body>

	<header>
		<div id="brand">
			<a href="adminPage">Smart Bank</a>
		</div>
		<nav>
			<ul>
				<li><a id="allhead" href="adminPage">Corporate Setup</a></li>
				<li><a id="allhead" href="userPage">User Setup</a></li>
				<li><a id="allhead" href="accountPage">Account Setup</a></li>
				<li id="login"><a id="allhead" href="/login">Admin</a></li>
				<li id="signup"><a id="allhead" href="/signup">Logout</a></li>
			</ul>
		</nav>
		<div id="hamburger-icon" onclick="toggleMobileMenu(this)">
			<div class="bar1"></div>
			<div class="bar2"></div>
			<div class="bar3"></div>
			<ul class="mobile-menu">
				<li><a href="adminPage">Corporate Setup</a></li>
				<li><a href="userPage">User Setup</a></li>
				<li><a href="accountPage">Account Setup</a></li>
				<li id="signup"><a href="/home">Logout</a></li>
			</ul>
		</div>
	</header>
	<br><br><br><br><br><br>
	
	
	<div style="width: 50%;margin:auto;">
	<div style="float: left">
	<ul><li id="login">
		<a href="/accList${cid}" style="text-decoration: none;">Back</a>
	</li></ul></div>
	<h3 style="text-align: center;">Add Account</h3>
	</div>
	
	
	<div style="text-align: center;margin:auto;top:0 auto;background-color: #1d1f1d;width: 50%;height: 550px;padding-top: 50px;">
	<form:form action="/addAccount" method="post"
		modelAttribute="account">
		<p>
			<label>Corporate Id:</label>
			<form:input path="corporateId" readonly="true" />
		</p>
		<p>
			<label>Account-No</label>
			<form:input path="accountNo" />  
		</p>

		<p>
			<label>Account-Name:&nbsp;&nbsp;</label>
			<form:input path="accountName" />
		</p>

		<p>
			<label>Branch:&nbsp;</label>
			<form:select path="accountBranch">
   				 <form:option value="Mumbai">Mumbai</form:option>
    			 <form:option value="Chennai">Chennai</form:option>
   				 <form:option value="Banglore">Banglore</form:option>
  				 <form:option value="Hyderabad">Hyderabad</form:option>
  				 <form:option value="Noida">Noida</form:option>
  				 <form:option value="Pune">Pune</form:option>
  							</form:select>
		</p>
		<p>
			<label>Currency:&nbsp;</label>
			<form:select path="currency">
				 <form:option value="Dollar$">Dollar$</form:option>
    			 <form:option value="INR">Indian-Rupees</form:option>
   				 <form:option value="Euro">EURO-$</form:option>			
			
			 </form:select>
		</p>
		
		<p>
			<label>Avail-Balance:&nbsp;</label>
			<form:input path="availableBalance" />
		</p>
		<ul>
		<li id="signup">
		<a><input type="SUBMIT" value="Submit" id="submit-btn" style="background-color: #1d1f1d;border: hidden;color:#ff3860; "/></a>
		</li>
		</ul>
	</form:form>
	</div>
	<script type="text/javascript">
		function toggleMobileMenu(menu) {
			menu.classList.toggle('open');
		}
	</script>
</body>
</html>