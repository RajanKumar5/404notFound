<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="db_data.*" %>

<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	

	if(session.getAttribute("email") == null){
		response.sendRedirect("Login");
	}
	
	Connection con = null;
	PreparedStatement stmt1 = null;
	PreparedStatement stmt2 = null;
	PreparedStatement stmt3 = null;
	ResultSet rs = null;
	
	
	String ques = "";
	String ans = "";
	String op1 = "";
	String op2 = "";
	String op3 = "";
	String op4 = "";
	ArrayList<Integer> list = new ArrayList<>();
	
	try{
			int i = 0;
			while(i < 10){
				int num;
				Random rand = new Random();
				num = rand.nextInt(11);
				if(! list.contains(num) && num != 0){
					list.add(num);
					i++;
				}	
			}
			
			String sql1 = "truncate temp";
			String sql2 = "select * from Music where sno = ?";
			String sql3 = "insert into temp(ques, ans, op1, op2, op3, op4) values(?, ?, ?, ?, ?, ?)";
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(DB_Details.getURL(), DB_Details.getUsername(), DB_Details.getPassword());
			stmt1 = con.prepareStatement(sql1);
			stmt1.executeUpdate();
			
			for(int num : list){
				stmt2 = con.prepareStatement(sql2);
				stmt2.setInt(1, num);
				rs = stmt2.executeQuery();
				while(rs.next()){
					ques = rs.getString("ques");
					ans = rs.getString("ans");
					op1 = rs.getString("op1");
					op2 = rs.getString("op2");
					op3 = rs.getString("op3");
					op4 = rs.getString("op4");
				}
				stmt3 = con.prepareStatement(sql3);
				stmt3.setString(1, ques);
				stmt3.setString(2, ans);
				stmt3.setString(3, op1);
				stmt3.setString(4, op2);
				stmt3.setString(5, op3);
				stmt3.setString(6, op4);
				stmt3.executeUpdate();
			}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	finally{
		if(rs != null){
			rs.close();
		}
		if(stmt1 != null){
			stmt1.close();
		}
		if(stmt2 != null){
			stmt2.close();
		}
		if(stmt3 != null){
			stmt3.close();
		}
		if(con != null){
			con.close();
		}
	}
%>

<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*" %>
<%@page import="db_data.*" %>

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
		<h3>Music Quiz</h3>
	</div>

	<div class="container d-flex justify-content-center mt-5 mb-5">
		<div class="card" style="width: 90%">
		  <img src="https://images.unsplash.com/photo-1520614233149-f698fd8379e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">Music Quiz</h5>
		    <p class="card-text">This quiz contains 10 question. For each correct answer you will get 1 point.</p>
		    <a href="Music_1.jsp" class="btn btn-primary"><i class="far fa-play-circle"></i> Start Quiz Now</a>
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