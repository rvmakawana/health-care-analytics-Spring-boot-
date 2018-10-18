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
       bottom: 30px;
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
</style>

</head>
<body>
<div role="navigation">
		<div class="navbar navbar-inverse">
			
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
				
					<li><a href="user1">HOME</a></li>
				
				</ul>
				<div class="nav navbar-nav navbar-right">
               <a href="/logout" class="navbar-brand"><strong>Logout</strong></a>
            </div>
			</div>
		</div>
	</div>
	<div class="container text-center" id="tasksDiv">
			
				<hr>
				<div class="table-responsive">
				<h3> My Exercises</h3>
					<table class="table table-striped table-bordered" id="user2">
						<thead>
							<tr>
								<th><center>EXERCISE NAME</center></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="ex1" items="${exer}">
								<tr>
								<td>${ex1.exname}</td>
								
						<td> <a href="/delex?id=${ex1.id}">remove</a></td>
							<!--  <td> <a href="/edit-user?id=${event.eventid }">Edit</a></td> -->
									</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			
<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>

<div class="footer">
<footer>Copyright &copy; healthanalytics.com</footer>
	</div>
	

	

</body>
</html>