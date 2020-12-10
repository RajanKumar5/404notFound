<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if(session.getAttribute("Admin_Email") == null){
		response.sendRedirect("Home");
	}
%>

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
		<style>
			html,
			body,
			header,
			.view {
			  height: 100%;
			}
			
			@media (max-width: 740px) {
			  html,
			  body,
			  header,
			  .view {
			    height: 100vh;
			  }
			}
			
			.top-nav-collapse {
			  background-color: #78909c !important;
			}
			
			.navbar:not(.top-nav-collapse) {
			  background: transparent !important;
			}
			
			@media (max-width: 991px) {
			  .navbar:not(.top-nav-collapse) {
			    background: #78909c !important;
			  }
			}
			
			h1 {
			  letter-spacing: 8px;
			}
			
			h5 {
			  letter-spacing: 3px;
			}
			
			.hr-light {
			  border-top: 3px solid #fff;
			  width: 80px;
			}
		</style>
		<script>
			// Animations init
			new WOW().init();
		</script>
		
	</head>
	<title>404notFound | Admin-Portal</title>
		
    <body>
		<script>
			// Animations init
			new WOW().init();
		</script>
        <header>
          <!--Navbar-->
          <nav class="navbar navbar-expand-lg navbar-dark fixed-top scrolling-navbar mb-5">
            <div class="container">
              <a class="navbar-brand" href="Home"><strong>404notFound</strong></a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-7" aria-controls="navbarSupportedContent-7" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent-7">
                <ul class="navbar-nav mr-auto">
                  <li class="nav-item">
                    <a class="nav-link" href="Admin_Portal">Home <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="Logout">Logout</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
          <!-- Navbar -->
          <!-- Full Page Intro -->
          <div class="view" style="background-image: url('https://images.unsplash.com/photo-1416339684178-3a239570f315?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fGFkbWlufGVufDB8MHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'); background-repeat: no-repeat; background-size: cover; background-position: center center;">
            <!-- Mask & flexbox options-->
            <div class="mask rgba-black-light align-items-center">
              <!-- Content -->
              <div class="container">
                <!--Grid row-->
                <div class="row">
                  <!--Grid column-->
                  <div class="col-md-12 mt-5 mb-4 white-text text-center">
                  	<br><br><br><br><br><br><br>
                    <h1 class="h1-reponsive white-text text-uppercase font-weight-bold mb-0 pt-md-5 pt-5 wow fadeInDown" data-wow-delay="0.3s"><strong>ADMIN PORTAL</strong></h1>
                    <hr class="hr-light my-4 wow fadeInDown" data-wow-delay="0.4s">
                    <h5 class="text-uppercase mb-4 white-text wow fadeInDown" data-wow-delay="0.4s"><strong>404notFound</strong></h5>
                    <a class="btn btn-outline-white wow fadeInDown" data-wow-delay="0.4s" href="Add_Remove_Faculty">ADD/REMOVE FACULTY</a>
                    <a class="btn btn-outline-white wow fadeInDown" data-wow-delay="0.4s" href="Edit_Faculty">EDIT FACULTY DETAILS</a>
                  </div>
                  <!--Grid column-->
                </div>
                <!--Grid row-->
              </div>
              <!-- Content -->
            </div>
            <!-- Mask & flexbox options-->
          </div>
          <!-- Full Page Intro -->
        </header>
        <!-- Main navigation -->
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
	<script>
			// Animations init
			new WOW().init();
		</script>
    </body>
</html>
