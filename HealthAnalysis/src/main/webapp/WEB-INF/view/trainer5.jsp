<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select User to update report</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
body {
    background-color: white;
    height: 150%;
}

footer {
    padding: 1em;
    color: white;
       bottom: 0px;
       position: fixed;
    background-color: black;
    clear: left;
    text-align: center;
      width: 100%;
}
html {
    position: relative;
    min-width: 1024px;
    min-height: 768px;
    
}
home {
    height: 800px;
    width: 50%;
    background-color: powderblue;
}
user2 {
background-color:"#FFFFFF";
color:white;
}
ul{
list-style-type:none;
margin:0;
padding:0;
overflow: hidden;
background-color:#333
}
li {
float:left;
}
user3
{
border: 1px solid black;
color:white;
}
li a{
display:block;
color:white;
text-align:center;
padding:14px 16px;
text-decoration:none;
}
table,th,td 
{

/* border: 1px solid black; */
border-collapse:collapse;
}
</style>
</head>
<body bgcolor="#E6E6FA">
<ul>
			<style>
.logoutLblPos{
position:fixed;
right:10px;
top:5px;
}
</style>	
					<li><a href="/events456">Event Registration</a></li>
					<li><a href="/show-user123">All Users</a></li> 
			  	<li> <a href ="/show-event"> All Events</a></li>
			  
<!-- 			  <li><a href ="/show-user1234"> Donate Coins</a></li> -->
			  <li><a href ="/show-user12345">  Coins</a></li>
			   <label class="logoutLblPos"><li><a href="/logout"> Logout</a></li></label>
				</ul>


		
	
<body>

<div class="container text-center" id="tasksDiv">
			<form:form action="/Calory123" method="Post" modelAttribute="user">
			
		
		<label>NAME:	<select name="username">
     <c:forEach var="user" items="${users}">
          <option><c:out value="${user.username}"/></option>
     </c:forEach>
</select> </label>
<input type="submit" value="submit">
</div>
</form:form>

		 </div>
</body>
</html>
