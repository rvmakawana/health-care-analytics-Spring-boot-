<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Trainer</title>
<style>
body {
background-image: url("http://livewallpaperswide.com/wp-content/uploads/2016/11/1480321543_163_background.jpg");
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
 background-color: white;
 color:"#FFFFFF";
}

</style>

</head>
<body>
<div role="navigation">
		  <div class="navbar navbar-inverse">
			
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
				
					<li><a href="/events456">Event Registration</a></li>
				 	<li><a href="/show-user123">All Users</a></li> 
				<li> <a href ="/show-event"> All Events</a></li>
			
<!-- 				<li><a href ="/show-user1234"> Donate Coins</a></li> -->
				<li><a href ="/show-user12345">  Coins</a></li>
				</ul>
				<div class="nav navbar-nav navbar-right">
               <a href="/logout" class="navbar-brand"><strong>Logout</strong></a>
            </div>
			</div>
		</div>
	</div>
	<c:choose>
	
	<c:when test="${mode=='TRAIN_HOME' }">
	<div class="container" id="homediv">
		<div class="jumbotron text-center">
			<h1>Health Analytics</h1>
			
		</div>
		</div>
		
		</c:when>
	
	<c:when test="${mode=='TRAIN_REGISTER' }">
		<div class="container text-center">
		<h3>New Registration</h3>
		<hr>
		<form class="form-horizontal" method="POST" action="/save-events">

			<div class="form-group">
				<label class="control-label col-md-3">Event Name</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="eventname" required
						value="${event.eventname }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Event Description</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="eventdesc" required
						value="${event.eventdesc }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Event Cost</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="coin" required
						value="${event.coin }" />
				</div>
			</div>
			
			<div class="form-group ">
				<input type="submit" class="btn btn-primary" value="Register" />
			</div>
		</form>
	</div>
	</c:when>
	
	
	
	
	
	</c:choose>	
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
		
<!-- 	<div class="footer"> -->
<!-- <footer>Copyright &copy; healthanalytics.com</footer> -->
<!-- 	</div> -->
	
	
</body>
</html>