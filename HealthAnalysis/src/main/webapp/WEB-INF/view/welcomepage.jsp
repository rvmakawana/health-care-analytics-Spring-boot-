<!DOCTYPE html >
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<html>
<head><!--
Fitness Template
http://www.templatemo.com/tm-487-fitness
-->
<title>Fitness - Responsive HTML Template</title>
<meta name="description" content="">
<meta name="author" content="">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">



<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lora:700italic' rel='stylesheet' type='text/css'>
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
tasksDiv{
background-color:"#FFFFFF";
color:"#FFFFFF";
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
li a:hover{
background-color:#111;
}
</style>
</head>
<body bgcolor="#E6E6FA">
<ul>
<li><a href="/welcome">Home</a></li>
<li><a href="/login">Login</a></li>
<li><a href="/register">New Registration</a></li>

</ul>

	<c:choose>
	<c:when test="${mode=='MODE_HOME' }">
	<div class="container" id="homediv">
		<div class="jumbotron text-center" id="home">
			<div class="row">

<div class="col-md-6 col-sm-12">


<blockquote class="wow fadeInUp" data-wow-delay="1.9s">"Fitness is not about being better than someone else, fitness is about being what you used to be".</blockquote>
</div>

<div class="col-md-1"></div>

<div class="wow fadeInUp col-md-4 col-sm-12" data-wow-delay="1s">
<div class="overview-detail">
<h2>About Fitness</h2>
<p>One Stop for a healthier life<a href="blog-single.html"></a>.</p>
<a href="https://www.google.com" class="btn btn-default smoothScroll">Let us begin</a>
</div>
</div>

<div class="col-md-1"></div>

</div>

			<h1 class="wow fadeInUp" data-wow-delay="1.6s">Health Care Analytics</h1>
			<h3> </h3>
		</div>
		</div>

	</c:when>
	<c:when test="${mode=='MODE_REGISTER' }">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/fontsregister/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/fontsregister/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="static/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="static/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/css/register1.css">
	<link rel="stylesheet" type="text/css" href="static/css/register2.css">
<!--===============================================================================================-->
</head>
<body style="background-color: #999999;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="login100-more" style="background-image: url('static/images/run4.gif');"></div>

			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
			<form name="myForm" class="login100-form validate-form" method="POST" action="/save-user"  onsubmit="return validateForm();">
<!-- 				<form class="login100-form validate-form"> -->
					<span class="login100-form-title p-b-59">
						Sign Up
					</span>

				
					<div class="wrap-input100 validate-input" data-validate="Username is required">
						<span class="label-input100">Username</span>
						<input class="input100" type="text" required name="username" placeholder="Username..." value="${user2.username }" />
					<h3 style="margin-top:1; color:red; font-style: normal;">${error}</h3>

						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Name is required">
						<span class="label-input100">First Name</span>
						<input class="input100" type="text" required name="firstname" placeholder="First Name..." value="${user2.firstname }" />
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Name is required">
						<span class="label-input100">Last Name</span>
						<input class="input100" type="text" required name="lastname" placeholder="Last Name..." value="${user2.lastname }" />
						<span class="focus-input100"></span>
					</div>
                     <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<span class="label-input100">Age</span>
						<input class="input100" type="number" required name="age" placeholder="Age..." value="${user2.age } minlength="7" />
						<span class="focus-input100"></span>
					</div>
                   <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<span class="label-input100">Email Id</span>
						<input class="input100" type="text" required name="email" placeholder="Email addess..." value="${user2.email }" />
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" required name="password" placeholder="*************" value="${user2.password }" />
						<span class="focus-input100"></span>
					</div>


					<div class="flex-m w-full p-b-33">
						

                  <label class="container"><h3>User</h3>
                  <input type="radio" required name = "radio" value="user" />
                  <span class="checkmark"></span>
                  </label>

                  <label class="container"><h3>Trainer</h3>
                  <input type="radio" required name = "radio" value="trainer" />
                  <span class="checkmark"></span>
                  </label>

						
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
                   <button class="login100-form-btn">Sign Up</button> 

						</div>

						<a href="/login" class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30">
							Sign in
							<i class="fa fa-long-arrow-right m-l-5"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="static/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="static/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="static/vendor/bootstrap/js/popper.js"></script>
	<script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="static/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="staticvendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="static/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="static/js/main.js"></script>
	<script>

	function validateForm() {
	    var x = document.forms["myForm"]["email"].value;
	    var atpos = x.indexOf("@");
	    var dotpos = x.lastIndexOf(".");
	    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
	        alert("Not a valid e-mail address");
	        return false;
	    }
	}
	</script>

</body>
	

	</c:when>
	<c:when test="${mode=='ALL_USERS' }">
	<div class="container text-center" id="tasksDiv">
				<h3>All Users</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered" id="user2">
						<thead>
							<tr>
								<th>Id</th>
								<th>UserName</th>
								<th>First Name</th>
								<th>LastName</th>
								<th>Age</th>
								<th>Email</th>
								<th>Delete</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${users }">
								<tr>
									<td>${user.id}</td>
									<td>${user.username}</td>
									<td>${user.firstname}</td>
									<td>${user.lastname}</td>
									<td>${user.age}</td>
									<td>${user.email}</td>
								
							<td><a href="/delete-user?id=${user.id }">Delete</a></td>
							<td> <a href="/edit-user?id=${user.id }">Edit</a></td>
									</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			</c:when>
			
			<c:when test="${mode=='MODE_LOGIN'}">

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->	
	
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="static/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="static/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="static/css/utillogin.css">
	<link rel="stylesheet" type="text/css" href="static/css/mainlogin.css">
<!--===============================================================================================-->

	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
			<form class="login100-form validate-form" method="POST" action="/login-user">
					<span class="login100-form-title p-b-34">
						Account Login
					</span>
					
					<div class="wrap-input100 rs1-wrap-input100 validate-input m-b-20" data-validate="Type user name">
						<input id="first-name" class="input100" type="text" name="username" placeholder="User name" value="${user.username }" />
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 rs2-wrap-input100 validate-input m-b-20" data-validate="Type password">
						<input class="input100" type="password" name="password" placeholder="Password" value="${user.password }" />
						<span class="focus-input100"></span>
					</div>
					<h3 style="color:red; text-align: center; font-style: normal;">${error}</h3>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Sign in
						</button>
					</div>

					<div class="w-full text-center p-t-27 p-b-239">
						<span class="txt1">
<!-- 							Forgot -->
						</span>

						<a href="/register" class="txt3">
						Sign Up
<!-- 							User name / password? -->
						</a>
					</div>

					<div class="w-full text-center">
						<a href="/register" class="txt3">
<!-- 							Sign Up -->
						</a>
					</div>
				</form>

				<div class="login100-more" style="background-image: url('static/images/run1.jpg');"></div>
			</div>
		</div>
	</div>
	
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="static/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="static/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="static/vendor/bootstrap/js/popper.js"></script>
	<script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="static/vendor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
<!--===============================================================================================-->
	<script src="static/vendor/daterangepicker/moment.min.js"></script>
	<script src="static/vendordaterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="static/vendor/vendorlogin/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="static/js/main.js"></script>
	
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