<%@page import="java.util.Random"%>
<%@page import="java.sql.*" %>
<%@page import="db_data.*"%>

<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	

	if(session.getAttribute("email") == null){
		response.sendRedirect("Login");
	}
	
	session.setAttribute("Q9", request.getParameter("Q"));
	session.setAttribute("A9", request.getParameter("A"));
	
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String ques = "";
	String ans = "";
	String op1 = "";
	String op2 = "";
	String op3 = "";
	String op4 = "";
	
	try{
		
			String sql = "select * from temp where sno = ?";
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(DB_Details.getURL(), DB_Details.getUsername(), DB_Details.getPassword());
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, 10);
			rs = stmt.executeQuery();
			
			while(rs.next()){
				ques = rs.getString("ques");
				ans = rs.getString("ans");
				op1 = rs.getString("op1");
				op2 = rs.getString("op2");
				op3 = rs.getString("op3");
				op4 = rs.getString("op4");
			}
	}
	catch(Exception e){
		e.printStackTrace();
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
    
    <title>Quizzz | Music</title>
    
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
    	.radio-toolbar {
		  margin: 10px;
		}
		
		.radio-toolbar input[type="radio"] {
		  opacity: 0;
		  position: fixed;
		  width: 0;
		}
		
		.radio-toolbar label {
		    display: inline-block;
		    padding: 10px 20px;
		    font-family: sans-serif, Arial;
		    font-size: 16px;
		    border: 3px solid #444;
		    border-radius: 4px;
		}
		
		.radio-toolbar label:hover {
		  background-color: #dfd;
		}
		
		.radio-toolbar input[type="radio"]:focus + label {
		    border: 2px solid #444;
		}
		
		.radio-toolbar input[type="radio"]:checked + label {
		    background-color: #98eb34;
		    border-color: #4c4;
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
	
	
	<div class="d-flex justify-content-center">
	  <div class="card mt-4 mb-4" style="width: 70%">
		<img src="profile.webp" class="card-img-top" alt="..." height="350px">
		  <div class="card-body radio-toolbar">
			<p class="card-text"><span class="badge badge-pill badge-warning"> Question 10</span></p>
			<p class="card-text"><%= ques%></p>
			  <form action="Music_Check" method="post">
			  	  <div class="radio-toolbar">
				    <input type="radio" id="A" name="Q" value="<%= op1%>" required="required">
				    <label for="A" style="width: 100%"><%= op1 %></label><br/>
				
				    <input type="radio" id="B" name="Q" value="<%= op2%>" required="required">
				    <label for="B" style="width: 100%"><%= op2 %></label><br/>
				
				    <input type="radio" id="C" name="Q" value="<%= op3%>" required="required">
				    <label for="C" style="width: 100%"><%= op3 %></label><br/>
				    
				    <input type="radio" id="D" name="Q" value="<%= op4%>" required="required">
				    <label for="D" style="width: 100%"><%= op4 %></label><br/>
				  </div>
			  	  <input type="hidden" name="A" value="<%= ans%>">
			  	  <button class="btn btn-success">NEXT <i class="fas fa-angle-double-right"></i></button>  
			</form>
	      </div>
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