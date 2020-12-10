<%@page import="db_data.*"%>

<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	
%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Font Awesome -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<!-- Google Fonts -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
	<!-- Bootstrap core CSS -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
	<!-- Material Design Bootstrap -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
	
    <title>404notFound | Verify-Faculty</title>
    
    <style type="text/css">
    	body{
    		background-color: #e3e1de;
    	}
    	a{
    		color: black;
    	}
    	a:HOVER	{
    		text-decoration: none;	
    		color: red;
    	}
    	.abcd{
    		border: solid 5px;
    		padding: 50px;
    		background: white;
    		vertical-align: middle;
    	}
    </style>
    
  </head>
  
  <body>
    <!--Navbar -->
	<nav class="mb-1 navbar navbar-expand-lg navbar-dark info-color bg-dark">
	  <a class="navbar-brand" href="Home"><b>404notFound</b></a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-4"
	    aria-controls="navbarSupportedContent-4" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarSupportedContent-4">
	    <ul class="navbar-nav ml-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="#">
	          <i class="fab fa-facebook-f"></i> Facebook
	          <span class="sr-only">(current)</span>
	        </a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">
	          <i class="fab fa-instagram"></i> Instagram</a>
	      </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-4" data-toggle="dropdown"
	          aria-haspopup="true" aria-expanded="false">
	          <i class="fas fa-user"></i> Profile </a>
	        <div class="dropdown-menu dropdown-menu-right dropdown-info" aria-labelledby="navbarDropdownMenuLink-4">
	          <a class="dropdown-item" href="#">My account</a>
	          <a class="dropdown-item" href="Logout">Log out</a>
	        </div>
	      </li>
	    </ul>
	  </div> 
	</nav>
	<!--/.Navbar -->
	
	<div class="text-white text-center bg-info mt-2 pt-1 pb-1">
		<h3><b>FACULTY VERIFICATION</b></h3>
	</div>
	
	<form action="Faculty_Verification" method="post">
  	  <div class="container mt-4 abcd mb-4">
  	  	  <div class="form-group">
		    <label for="exampleInputEmail1"><b>EMAIL ADDRESS</b></label>
		    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email">
		    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1"><b>FULL NAME</b></label>
		    <input type="text" class="form-control" id="exampleInputPassword1" required="required" name="name">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1"><b>ONE TIME PASSWORD</b></label>
		    <input type="password" class="form-control" id="exampleInputPassword1" required="required" name="one_time_password">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1"><b>NEW PASSWORD</b></label>
		    <input type="password" class="form-control" id="exampleInputPassword1" required="required" name="new_password">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputEmail1">Date of Birth</label>
		    <input type="date" class="form-control" id="exampleInputEmail1" required="required" name="dob">
		  </div>
		  <button type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i> Verify</button>
		  
		  <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
			 Enter OTP
		  </button> -->
  	  </div>	  
	</form>

	<!-- Footer -->
	<footer class="page-footer font-small mdb-color pt-4 bg-dark">
	
	  <!-- Footer Links -->
	  <div class="container text-center text-md-left">
	
	    <!-- Footer links -->
	    <div class="row text-center text-md-left mt-3 pb-3">
	
	      <!-- Grid column -->
	      <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
	        <h6 class="text-uppercase mb-4 font-weight-bold">Company name</h6>
	        <p>Here you can use rows and columns to organize your footer content. Lorem ipsum dolor sit amet,
	          consectetur
	          adipisicing elit.</p>
	      </div>
	      <!-- Grid column -->
	
	      <hr class="w-100 clearfix d-md-none">
	
	      <!-- Grid column -->
	      <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
	        <h6 class="text-uppercase mb-4 font-weight-bold">Products</h6>
	        <p>
	          <a href="#!">MDBootstrap</a>
	        </p>
	        <p>
	          <a href="#!">MDWordPress</a>
	        </p>
	        <p>
	          <a href="#!">BrandFlow</a>
	        </p>
	        <p>
	          <a href="#!">Bootstrap Angular</a>
	        </p>
	      </div>
	      <!-- Grid column -->
	
	      <hr class="w-100 clearfix d-md-none">
	
	      <!-- Grid column -->
	      <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
	        <h6 class="text-uppercase mb-4 font-weight-bold">Useful links</h6>
	        <p>
	          <a href="#!">Your Account</a>
	        </p>
	        <p>
	          <a href="#!">Become an Affiliate</a>
	        </p>
	        <p>
	          <a href="#!">Shipping Rates</a>
	        </p>
	        <p>
	          <a href="#!">Help</a>
	        </p>
	      </div>
	
	      <!-- Grid column -->
	      <hr class="w-100 clearfix d-md-none">
	
	      <!-- Grid column -->
	      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
	        <h6 class="text-uppercase mb-4 font-weight-bold">Contact</h6>
	        <p>
	          <i class="fas fa-home mr-3"></i> New York, NY 10012, US</p>
	        <p>
	          <i class="fas fa-envelope mr-3"></i> info@gmail.com</p>
	        <p>
	          <i class="fas fa-phone mr-3"></i> + 01 234 567 88</p>
	        <p>
	          <i class="fas fa-print mr-3"></i> + 01 234 567 89</p>
	      </div>
	      <!-- Grid column -->
	
	    </div>
	    <!-- Footer links -->
	
	    <hr>
	
	    <!-- Grid row -->
	    <div class="row d-flex align-items-center">
	
	      <!-- Grid column -->
	      <div class="col-md-7 col-lg-8">
	
	        <!--Copyright-->
	        <p class="text-center text-md-left">© 2020 Copyright:
	            <strong> 404notFound</strong>
	        </p>
	
	      </div>
	      <!-- Grid column -->
	
	      <!-- Grid column -->
	      <div class="col-md-5 col-lg-4 ml-lg-0">
	
	        <!-- Social buttons -->
	        <div class="text-center text-md-right">
	          <ul class="list-unstyled list-inline">
	            <li class="list-inline-item">
	              <a class="btn-floating btn-sm rgba-white-slight mx-1">
	                <i class="fab fa-facebook-f"></i>
	              </a>
	            </li>
	            <li class="list-inline-item">
	              <a class="btn-floating btn-sm rgba-white-slight mx-1">
	                <i class="fab fa-twitter"></i>
	              </a>
	            </li>
	            <li class="list-inline-item">
	              <a class="btn-floating btn-sm rgba-white-slight mx-1">
	                <i class="fab fa-google-plus-g"></i>
	              </a>
	            </li>
	            <li class="list-inline-item">
	              <a class="btn-floating btn-sm rgba-white-slight mx-1">
	                <i class="fab fa-linkedin-in"></i>
	              </a>
	            </li>
	          </ul>
	        </div>
	
	      </div>
	      <!-- Grid column -->
	
	    </div>
	    <!-- Grid row -->
	
	  </div>
	  <!-- Footer Links -->
	
	</footer>
	<!-- Footer -->
		
    <!-- JQuery -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
	  </body>
</html>