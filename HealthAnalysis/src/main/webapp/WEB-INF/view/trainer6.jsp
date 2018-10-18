<!DOCTYPE html >
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>Enter user workout details</title>
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
user2{
background-color:"#FFFFFF";
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


		

	<div class="container text-center" id="tasksDiv">
			
				<hr>
				<div class="table-responsive">
				<h3> All Events</h3>
				<% int a=0; %>
				<% int b=0; %>
				<form action="cc" method="POST">
					<table class="table table-striped table-bordered" id="user2">
						<thead>
							<tr>
								<th>EXERCISE NAME</th>
								<th>Time Spent </th>
								<th>Exercise(Calory/hour) </th>
							</tr>
						</thead>
						<tbody>
						    
							<c:forEach var="ex1"   items="${exer}">
								<tr>
								<td>${ex1.exname}</td>
								
								<td><input type="text" name="text<%= a %>" ></td>
								
						 	   <td><input type="text" name="calo<%= a %>" ></td>
								 <%  ++a; %>
							<!--  <td> <a href="/edit-user?id=${event.eventid }">Edit</a></td> -->
									</tr>
									
							
							</c:forEach>
							
						</tbody>
					</table>
					
					Weight: <input type="text" name="weight">
					<br>
					<br>
					
					<input type="submit" value="submit">
				</div>
			</div>
			
<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>

<!-- <div class="footer"> -->
<!-- <footer>Copyright &copy; healthanalytics.com</footer> -->
<!-- 	</div> -->
	

	

</body>
</html>