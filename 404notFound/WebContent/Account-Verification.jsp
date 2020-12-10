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
	
	<footer class="page-footer font-small special-color-dark pt-4 mt-4" style="bottom: 0; position: fixed; width: 100%;">
	  <div class="container">
	    <ul class="list-unstyled list-inline text-center">
	      <li class="list-inline-item">
	        <a class="btn-floating btn-fb mx-1">
	          <i class="fab fa-facebook-f"> </i>
	        </a>
	      </li>
	      <li class="list-inline-item">
	        <a class="btn-floating btn-tw mx-1">
	          <i class="fab fa-twitter"> </i>
	        </a>
	      </li>
	      <li class="list-inline-item">
	        <a class="btn-floating btn-gplus mx-1">
	          <i class="fab fa-google-plus-g"> </i>
	        </a>
	      </li>
	      <li class="list-inline-item">
	        <a class="btn-floating btn-li mx-1">
	          <i class="fab fa-linkedin-in"> </i>
	        </a>
	      </li>
	      <li class="list-inline-item">
	        <a class="btn-floating btn-dribbble mx-1">
	          <i class="fab fa-dribbble"> </i>
	        </a>
	      </li>
	    </ul>
	  </div>
	  <div class="footer-copyright text-center py-3">
	  	<strong>© 2020 Copyright</strong>
	  </div>
	</footer>

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