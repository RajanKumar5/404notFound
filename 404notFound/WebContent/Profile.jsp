<%@page import="java.util.HashMap"%>
<%@page import="java.sql.*" %>
<%@page import="db_data.*" %>

<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	
	
	String email = session.getAttribute("email") + "";

	if(session.getAttribute("email") == null){
		response.sendRedirect("Login");
	}
	
	
	HashMap<String, String> user_details = new HashMap<>();
		
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	try{
		String sql = "select * from users where email=?";
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(DB_Details.getURL(), DB_Details.getUsername(), DB_Details.getPassword());
		stmt = con.prepareStatement(sql);
		stmt.setString(1, email);
		rs = stmt.executeQuery();
		while(rs.next()){
			user_details.put("name", rs.getString("fullname"));
			user_details.put("mobile", rs.getString("mobile"));
			user_details.put("dob", rs.getString("dob"));
			user_details.put("points", rs.getString("points"));
		}
	}
	catch(Exception e){
		e.printStackTrace();
		%>
			<script>
				alert("Something went wrong! Try again later.")
			</script>
		<%
		RequestDispatcher rd = request.getRequestDispatcher("Login");
		rd.include(request, response);
	}
	finally{
		if(rs != null){
			rs.close();
		}
		if(stmt != null){
			stmt.close();
		}
		if(con != null){
			con.close();
		}
	}
	
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

    <title>Quizzz | Profile</title>
    
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
    </style>
    
  </head>
  <body>
    <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
	  <a class="navbar-brand" href="Profile"><b>Quizzz</b></a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNavDropdown">
	    <ul class="navbar-nav ml-auto">
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle mr-4" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
	      <li class="nav-item mr-4">
				<a class="nav-link" href="Profile">Profile</a>
			</li>
	  		<li class="nav-item">
				<a class="nav-link" href="Logout">Logout</a>
			</li>
	    </ul>
	  </div>
	</nav>
	
	<div class="text-white text-center bg-info mt-2 pt-1 pb-1">
		<h3>Profile</h3>
	</div>
	
	<div class="card d-flex justify-content-center container mt-4 mb-4" style="width: 80%;">
	  <img src="https://images.unsplash.com/photo-1599076587764-11c31e0e79b7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60" class="card-img-top mt-3" alt="..."  height="350px">
	  <div class="card-body">
	    <h5 class="card-title"><b>Welcome, <%= user_details.get("name") %></b></h5><br/>
	    <p class="card-text"><b>Email Address :</b> <%= email %></p>
	    <p class="card-text"><b>Mobile Number :</b> <%= user_details.get("mobile") %></p>
	    <p class="card-text"><b>Date of Birth :</b> <%= user_details.get("dob") %></p>
	    <p class="card-text"><b>Points : </b><span class="badge badge-pill badge-warning"><%= user_details.get("points") %></span> </p>
	    <% 
	    	if(Integer.parseInt(user_details.get("points")) >= 50){
	    		%>
	    			<a href="#" class="btn btn-primary"><i class="fas fa-award"></i> Redeem</a>
	    		<%
	    	}
	    	else{
	    		%>
	    			<p class="card-text" style="color: red"><b>*Note : You need minimum 50 points to redeem your reward.</b></p>
	    			<a href="#" class="btn btn-primary disabled"><i class="fas fa-award"></i> Redeem</a>
	    		<%
	    	}
	    %>
	  </div>
	</div>
	
	<footer class="page-footer font-small special-color-dark pt-4">
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