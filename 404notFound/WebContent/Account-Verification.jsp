<%@page import="db_data.*" %>
<%@page import="mail_service.*" %>
<%@page import="java.util.Random" %>

<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	
	String rec_email = session.getAttribute("tmp-email") + "";
	
	Random rand = new Random();
	String a = rand.nextInt(9) + "";
	String b = rand.nextInt(9) + "";
	String c = rand.nextInt(9) + "";
	String d = rand.nextInt(9) + "";
	String OTP = a+b+c+d;
	
	
	String sub = "OTP for account verification";
	String msg = "Dear User,\n\nYour OTP for account verification is : " + OTP + "\n\nPlease don't share this OTP with anyone. ";
	//JavaMailUtil.sendMail(email, sub, msg);
	JavaMailUtil.sendMail(rec_email, sub, msg);
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
	
    <title>Quizzz | Account Verification</title>
    
    <style type="text/css">
    	body{
    		background-color: #e3e1de;
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
  
   <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
	  <a class="navbar-brand" href="Home"><b>Quizzz</b></a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNavDropdown">
	    <ul class="navbar-nav ml-auto">
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          Select Quiz Category
	        </a>
	        <div class="dropdown-menu ml-auto" aria-labelledby="navbarDropdownMenuLink">
	          <a class="dropdown-item" href="Music">Music</a>
	          <a class="dropdown-item" href="Politics">Politics</a>
	          <a class="dropdown-item" href="Sports">Sports</a>
	          <a class="dropdown-item" href="Entertainment">Entertainment</a>
	          <a class="dropdown-item" href="History">History</a>
	          <a class="dropdown-item" href="Science">Science</a>
	        </div>
	      </li>
	    </ul>
	  </div>
	</nav>
	
	<div class="text-white text-center bg-info mt-2 pt-1 pb-1">
		<h3>Verify your account</h3>
	</div>
	
	
   	<form action="" method="post">
  	  <div class="container mt-4 abcd">
  	  	  <div class="form-group">
		    <label for="exampleInputEmail1">Enter OTP</label>
		    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email">
		    <small id="emailHelp" class="form-text text-muted">Don't share your OTP with anyone.</small>
		  </div>
		  <button type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i> Verify</button>
		  <br/>
		  <br/>
		  <a href="Account-Verification">Resend OTP</a>
		  
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
	        <h6 class="text-uppercase mb-4 font-weight-bold">404notFound</h6>
	        <p>Just A Random Team In "void hacks()" trying to Gain Experience and Have a Good Time.</p>
	      </div>
	      <!-- Grid column -->
	
	      <hr class="w-100 clearfix d-md-none">
	
	      <!-- Grid column -->
	      <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
	        <h6 class="text-uppercase mb-4 font-weight-bold">DEVELOPERS</h6>
	        <p>
	          <a href="#!">RAJAN KUMAR</a>
	        </p>
	        <p>
	          <a href="#!">SWAPNIL RAJAK</a>
	        </p>
	        <p>
	          <a href="#!">DEVYANI PAGARE</a>
	        </p>
	        <p>
	          <a href="#!">ADITYA JOSHI</a>
	        </p>
	      </div>
	      <!-- Grid column -->
	
	      <hr class="w-100 clearfix d-md-none">
	
	      <!-- Grid column -->
	      <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
	        <h6 class="text-uppercase mb-4 font-weight-bold">TECHNOLOGY USED</h6>
	        <p>
	          <a href="#!">JAVA SERVER PAGES</a>
	        </p>
	        <p>
	          <a href="#!">JAVASCRIPT</a>
	        </p>
	        <p>
	          <a href="#!">BOOSTRAP</a>
	        </p>
	        <p>
	          <a href="#!">MySQL WORKBENCH</a>
	        </p>
	      </div>
	
	      <!-- Grid column -->
	      <hr class="w-100 clearfix d-md-none">
	
	      <!-- Grid column -->
	      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
	        <h6 class="text-uppercase mb-4 font-weight-bold">Contact</h6>
	        <p>
	          <i class="fas fa-home mr-3"></i>Ujjain Road Gram Baroli, Indore,<br><tab> Madhya Pradesh 453111</p>
	        <p>
	          <i class="fas fa-envelope mr-3"></i> service.404notfound@gmail.com</p>
	        <p>
	          <i class="fas fa-phone mr-3"></i> +91 9753349313 </p>
	        <p>
	          <i class="fas fa-phone mr-3"></i> +91 9479526773</p>
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
	        <p class="text-center text-md-left">@ 2020 Copyright:
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
