<!DOCTYPE html >
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>View All Events</title>

<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
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
li a{
display:block;
color:white;
text-align:center;
padding:14px 16px;
text-decoration:none;
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
				
				
					<li><a href="/events">Event Registration</a></li>
					<li> <a href ="/show-user123"> All Users</a></li>			
				<li> <a href ="/show-event"> All Events</a></li>
				
<!-- 			<li><a href ="/show-user1234"> Donate Coins</a></li> -->
			<li><a href ="/show-user12345">  Coins</a></li>	
			   <label class="logoutLblPos"><li><a href="/logout"> Logout</a></li></label>
				</ul>


<c:choose> 
	<c:when test="${mode=='ALL_EVENTS' }">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/vendor/vendor-t2/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="staticfonts-t2/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="staticfonts-t2/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/vendor/vendor-t2/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/vendor/vendor-t2/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/vendor/vendor-t2/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/vendor/vendor-t2/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/vendor/vendor-t2/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/css/util-t2.css">
	<link rel="stylesheet" type="text/css" href="static/css/main-t2.css">
<!--===============================================================================================-->


	<div class="bg-contact100" style="background-image: url('static/images/gym5.jpg');">
        <div class="container-contact100">
				<div class="container text-center" id="tasksDiv">
				<h3> All Events</h3>
				<div class="table-responsive">
					<table class="table table-striped table-bordered" id="user2">
						<thead>
							<tr>
							<th>Event Id</th>
								<th>EVENT NAME</th>
								<th>EVENT DESCRIPTION</th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="event" items="${events }">
								<tr>
								    <td>${event.eventid}</td>
									<td>${event.eventname}</td>
									<td>${event.eventdesc}</td>
				<td><a href="/delete-events123?eventid=${event.eventid }">Delete</a></td>	
				<td><a href="/end-events123?eventid=${event.eventid }">END EVENTS</a></td>
									</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	
	</div>
	
</c:when>
	
</c:choose> 

<!--===============================================================================================-->
	<script src="static/vendor/vendor-t2/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="static/vendor/vendor-t2/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="static/vendor/vendor-t2/bootstrap/js/popper.js"></script>
	<script src="static/vendor/vendor-t2/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="static/vendor/vendor-t2/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="static/vendor/vendor-t2/daterangepicker/moment.min.js"></script>
	<script src="static/vendor/vendor-t2/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="static/vendor/vendor-t2/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
	<script src="static/js/map-custom.js"></script>
<!--===============================================================================================-->
	<script src="static/js/main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
	
<!-- <div class="footer"> -->
<!-- <footer>Copyright &copy; healthanalytics.com</footer> -->
<!-- 	</div> -->
	

	

</body>
</html>