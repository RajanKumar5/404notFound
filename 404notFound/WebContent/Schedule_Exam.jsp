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
	
    <title>404notFound | Schedule-Exam</title>
    
    <style type="text/css">
    	body{
    		background-color: #e3e1de;
    	}
    	a{
    		color: black;
    	}
    	a:HOVER	{
    		color: red;
    	}
    	.abcd{
    		border: solid 5px;
    		padding: 50px;
    		background: white;
    		vertical-align: middle;
    	}
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
		    height: 1000px;
		  }
		}
		@media (min-width: 800px) and (max-width: 850px) {
		  html,
		  body,
		  header,
		  .view {
		    height: 650px;
		  }
		}
		
		.top-nav-collapse {
		  background-color: #3f51b5 !important;
		}
		
		.navbar:not(.top-nav-collapse) {
		  background: transparent !important;
		}
		
		@media (max-width: 991px) {
		  .navbar:not(.top-nav-collapse) {
		    background: #3f51b5 !important;
		  }
		}
		
		.rgba-gradient {
		  background: -webkit-linear-gradient(45deg, rgba(0, 0, 0, 0.7), rgba(72, 15, 144, 0.4) 100%);
		  background: -webkit-gradient(linear, 45deg, from(rgba(0, 0, 0, 0.7), rgba(72, 15, 144, 0.4) 100%)));
		  background: linear-gradient(to 45deg, rgba(0, 0, 0, 0.7), rgba(72, 15, 144, 0.4) 100%);
		}
		
		.card {
		  background-color: rgba(126, 123, 215, 0.2);
		}
		
		.md-form label {
		  color: #ffffff;
		}
		
		h6 {
		  line-height: 1.7;
		}
    </style>
  </head>
	  <html lang="en">
    <body>

        <header>
          <!-- Navbar -->
          <nav class="navbar navbar-expand-lg navbar-dark fixed-top scrolling-navbar">
            <div class="container">
              <a class="navbar-brand" href="#">
                <strong>404notFound</strong>
              </a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-7" aria-controls="navbarSupportedContent-7" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent-7">
                <ul class="navbar-nav mr-auto">
                  <li class="nav-item">
                    <a class="nav-link" href="Faculty_Portal">Home
                      <span class="sr-only">(current)</span>
                    </a>
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
          <div class="view" style="background-image: url('https://images.unsplash.com/photo-1546016366-bf061374d54e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fHRlc3R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'); background-repeat: no-repeat; background-size: cover; background-position: center center;">
            <!-- Mask & flexbox options-->
            <div class="mask rgba-gradient align-items-center">
              <!-- Content -->
              <div class="container">
                <!--Grid row-->
                <div class="row mt-5">
                  <!--Grid column-->
                  <div class="col-md-6 mt-md-0 white-text text-center text-md-left">
                  	<br><br><br><br><br>
                    <h1 class="h1-responsive font-weight-bold wow fadeInLeft" data-wow-delay="0.3s">SCHEDULE EXAM</h1>
                    <hr class="hr-light wow fadeInLeft" data-wow-delay="0.3s">
                    <h6 class="mb-3 wow fadeInLeft" data-wow-delay="0.3s">Safe & Secure</h6>
                  </div>
                  <!--Grid column-->
                  <!--Grid column-->
                  <div class="col-md-6 col-xl-5 mb-4">
                    <!--Form--><br><br><br><br><br>
                    <div class="card wow fadeInRight" data-wow-delay="0.3s">
                      <div class="card-body">
                        <!--Header-->
                        <div class="text-center">
                          <h3 class="white-text"> ENTER DETAILS</h3>
                          <hr class="hr-light">
                        </div>
                        <!--Body-->
                        <form action="Select_Paper.jsp" method="post">
                        <div class="md-form">
                          
                          <input type="date" id="form2" class="white-text form-control" required="required" name="date">
                          <label for="form2" class="active">Exam Date</label>
                        </div>
                        <div class="md-form">
                          <input type="text" id="form3" class="white-text form-control" required="required" name="subject">
                          <label for="form4">Subject</label>
                        </div>
                        <div class="md-form">
                          <input type="text" id="form4" class="white-text form-control" required="required" name="subject_code">
                          <label for="form4">Subject Code</label>
                        </div>
                        <div class="md-form">
                        <label for="form4">Exam Type</label><br><br>
							  <select name="paper_type" id="cars" required="required">
							    <option value="Objective">Objective</option>
							    <option value="Descriptive">Descriptive</option>
							  </select>
                          
                        </div>
                        <div class="text-center mt-4">
                          <button class="btn btn-indigo" type="submit">CREATE TEST PAPER</button>
                          <hr class="hr-light mb-3 mt-4">
                          <div class="inline-ul text-center">
                            <a class="p-2 m-2 tw-ic">
                              <i class="fab fa-twitter white-text"></i>
                            </a>
                            <a class="p-2 m-2 li-ic">
                              <i class="fab fa-linkedin-in white-text"> </i>
                            </a>
                            <a class="p-2 m-2 ins-ic">
                              <i class="fas fa-instagram white-text"> </i>
                            </a>
                          </div>
                        </div>
                        </form>
                      </div>
                    </div>
                    <!--/.Form-->
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
</html>
