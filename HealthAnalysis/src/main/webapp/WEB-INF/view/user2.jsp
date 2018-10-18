<!DOCTYPE html >
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>Health-analysis | home</title>
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
				
				
					<li><a href="/user1">Home</a></li>
					
			   <li><a href="/logout"> Logout</a></li>
				</ul>


<!-- <div role="navigation"> -->
<!-- 		<div class="navbar navbar-inverse"> -->
			
<!-- 			<div class="navbar-collapse collapse"> -->
<!-- 				<ul class="nav navbar-nav"> -->
				
<!-- 					<li><a href="user1">HOME</a></li> -->
				
<!-- 				</ul> -->
<!-- 				<div class="nav navbar-nav navbar-right"> -->
<!--                <a href="/logout" class="navbar-brand"><strong>Logout</strong></a> -->
<!--             </div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
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
			
<!-- 				<hr> -->
				<div class="table-responsive">
				<h3> All Events</h3>
					<table class="table table-striped table-bordered" id="user2">
						<thead>
							<tr>
							<th>Event Id</th>
								<th>EVENT NAME</th>
								<th>EVENT DESCRIPTION</th>
								<th>EVENT COST</th>
								<th>ENROLL</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="event" items="${events }">
								<tr>
			                        <td>${event.eventid}</td> 
									<td>${event.eventname}</td>
									<td>${event.eventdesc}</td>
									<td>${event.coin}</td>
									
									<td> <a href="/enroll?id=${event.eventid }&co=${event.coin}">enroll</a></td>
									
<%-- 									<td> <a href="/edit-user?id=${event.eventid }">Edit</a></td>  --%>
								
						
							<!--  <td> <a href="/edit-user?id=${event.eventid }">Edit</a></td> -->
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
<!-- <script src="static/js/jquery-1.11.1.min.js"></script> -->
<!-- 	<script src="static/js/bootstrap.min.js"></script> -->

<!-- <div class="footer"> -->
<!-- <footer>Copyright &copy; healthanalytics.com</footer> -->
<!-- 	</div> -->
	

	

</body>
</html>