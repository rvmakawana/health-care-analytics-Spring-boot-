<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Start</title>
  <!-- Bootstrap core CSS-->
  <link href="static/css/bootstrap1.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="static/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="static/css/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="static/css/sb-admin.css" rel="stylesheet">
</head>


<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="#">Health Care Analytics</a>
	
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="/user12">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Dashboard</span>
           </a> 
        </li> 
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts"> 
           <a class="nav-link" href="/edit-user2"> 
            <i class="fa fa-fw fa-area-chart"></i> 
           <span class="nav-link-text">Update Profile</span> 
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="/show-events1234">
            <i class="fa fa-fw fa-table"></i>
<!--             <li> <a href ="/show-events1234"> All Events</a></li> -->
            <span class="nav-link-text"> All Events</span>
          </a>
        </li>
        
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="/enrolevent">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text"> Enrolled Events</span>
          </a>
        </li>

      <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="/searchuser">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text"> Search User</span>
          </a>
        </li>

        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-wrench"></i>
            <span class="nav-link-text">Exercises</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseComponents">
            <li>
              <a href="/exer">Add Exercise</a>
            </li>
            <li>
              <a href="/showex">My Exercises</a>
            </li>
          </ul>
        </li>
        
        
        
      
      <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="/logout">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text"> Logout</span>
          </a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="content-wrapper">
    <div class="container-fluid">  
      
	
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
      </ol>
	  
      <!-- Icon Cards-->
      <div class="row">
        <div class="col-xl-4 col-sm-6 mb-3">
          <div class="card text-white bg-primary o-hidden h-100">
            <div class="card-body">
              <div class="card-body-icon">
                <i class="fa fa-fw fa-comments"></i></div>
              <div class="mr-5">Events Registered</div>
            </div>
          </div>
        </div>
		
        <div class="col-xl-4 col-sm-6 mb-3">
          <div class="card text-white bg-warning o-hidden h-100">
            <div class="card-body">
              <div class="card-body-icon">
                <i class="fa fa-fw fa-list"></i>
              </div>
              <div class="mr-5">Calories Burnt ${user.coin*100}</div>
            </div>
          </div>
        </div>
		
        <div class="col-xl-4 col-sm-6 mb-3">
          <div class="card text-white bg-success o-hidden h-100">
            <div class="card-body">
              <div class="card-body-icon">
                <i class="fa fa-fw fa-shopping-cart"></i>
              </div>
              <div class="mr-5">Coins Earned ${user.coin}</div>
            </div>
          </div>
        </div>
	 <%@ include file="down.jsp" %> 
      
	  
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="row">
          <p class="copyright-text">Copyright &copy; 2018 Health Analytics</p>
        </div>
      </div>
    </footer>
	
	
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    
      <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
          </div>
          <div class="modal-footer">
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>
    
    
    

  <!-- Bootstrap core JavaScript-->
    <script src="static/js/jquery.min.js"></script>
    <script src="static/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="static/js/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="static/js/Chart.min.js"></script>
    <script src="static/js/jquery.dataTables.js"></script>
    <script src="static/js/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="static/js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="static/js/sb-admin-datatables.min.js"></script>
    <script src="static/js/sb-admin-charts.min.js"></script>
  </div>
</body>
</html>