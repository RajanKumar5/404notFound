<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	

	if(session.getAttribute("email") == null){
		response.sendRedirect("Login");
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
	
    <title>Quizzz | History</title>
    
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
		<h3>History Quiz</h3>
	</div>
	
	<%
			ArrayList<Integer> list = new ArrayList<Integer>();
			ArrayList<String> question = new ArrayList<>();
			ArrayList<String> answer = new ArrayList<>();
			ArrayList<String> op_a = new ArrayList<>();
			ArrayList<String> op_b = new ArrayList<>();
			ArrayList<String> op_c = new ArrayList<>();
			ArrayList<String> op_d = new ArrayList<>();
			ArrayList<String> image = new ArrayList<>();
		
			/* int i = 0;
			while(i < 5){
				int num;
				Random rand = new Random();
				num = rand.nextInt(6);
				if(! list.contains(num) && num != 0){
					list.add(num);
					i++;
				}
				
			} */
			Connection con = null;
			PreparedStatement stmt = null;
			ResultSet rs = null;
			
			try{
				
					String sql = "select * from History";
					Class.forName("com.mysql.cj.jdbc.Driver");
					con = DriverManager.getConnection(DB_Details.getURL(), DB_Details.getUsername(), DB_Details.getPassword());
					stmt = con.prepareStatement(sql);
					rs = stmt.executeQuery();
					
					while(rs.next()){
						int sno = rs.getInt("S_No");
						question.add(rs.getString("Question"));
						answer.add(rs.getString("Answer"));
						op_a.add(rs.getString("Option_A"));
						op_b.add(rs.getString("Option_B"));
						op_c.add(rs.getString("Option_C"));
						op_d.add(rs.getString("Option_D"));
						image.add(rs.getString("Image"));
						
						%>	
							
						<%
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
		
   <form action="History_Check" method="post">
	<div class="container">
	
	<div id="carouselExampleInterval" class="carousel slide" data-ride="carousel">
	  <div class="carousel-inner">
	    <div class="carousel-item active" data-interval="100000000">
	      <div class="d-flex justify-content-center">
		  <div class="card mt-4 mb-4" style="width: 18rem;">
		 	  <img src="<%=image.get(0) %>" class="card-img-top" alt="..." height="250px">
		 	   <div class="card-body">
				<p class="card-text"><%= question.get(0) %></p>
		  	    <div class="radio">
		  		 <label><input type="radio" name="Q1" value="<%= op_a.get(0)%>"><%= " " + op_a.get(0) %></label>
		  		</div>
		  		<div class="radio">
		  		 <label><input type="radio" name="Q1" value="<%= op_b.get(0)%>"><%= " " + op_b.get(0) %></label>
		  		</div>
		  		<div class="radio ">
		  		 <label><input type="radio" name="Q1" value="<%= op_c.get(0)%>"><%= " " + op_c.get(0) %></label>
		  		</div>
		  		<div class="radio ">
		  		 <label><input type="radio" name="Q1" value="<%= op_d.get(0)%>"><%= " " + op_d.get(0) %></label>
		  		</div>
		  		 <input type="hidden" name="A1" value="<%= answer.get(0)%>">  
		  		</div>
		  	</div>
		  </div>
	    </div>
	    <div class="carousel-item" data-interval="100000000">
	      <div class="d-flex justify-content-center">
		  <div class="card mt-4 mb-4" style="width: 18rem;">
		 	  <img src="<%=image.get(1) %>" class="card-img-top" alt="..." height="250px">
		 	   <div class="card-body">
				<p class="card-text"><%= question.get(1) %></p>
		  	    <div class="radio">
		  		 <label><input type="radio" name="Q2" value="<%= op_a.get(1)%>"><%= " " + op_a.get(1) %></label>
		  		</div>
		  		<div class="radio">
		  		 <label><input type="radio" name="Q2" value="<%= op_b.get(1)%>"><%= " " + op_b.get(1) %></label>
		  		</div>
		  		<div class="radio ">
		  		 <label><input type="radio" name="Q2" value="<%= op_c.get(1)%>"><%= " " + op_c.get(1) %></label>
		  		</div>
		  		<div class="radio ">
		  		 <label><input type="radio" name="Q2" value="<%= op_d.get(1)%>"><%= " " + op_d.get(1) %></label>
		  		</div>
		  		 <input type="hidden" name="A2" value="<%= answer.get(1)%>">  
		  		</div>
		  	</div>
		  </div>
	    </div>
	    <div class="carousel-item" data-interval="100000000">
	      <div class="d-flex justify-content-center">
		  <div class="card mt-4 mb-4" style="width: 18rem;">
		 	  <img src="<%=image.get(2) %>" class="card-img-top" alt="..." height="250px">
		 	   <div class="card-body">
				<p class="card-text"><%= question.get(2) %></p>
		  	    <div class="radio">
		  		 <label><input type="radio" name="Q3" value="<%= op_a.get(2)%>"><%= " " + op_a.get(2) %></label>
		  		</div>
		  		<div class="radio">
		  		 <label><input type="radio" name="Q3" value="<%= op_b.get(2)%>"><%= " " + op_b.get(2) %></label>
		  		</div>
		  		<div class="radio ">
		  		 <label><input type="radio" name="Q3" value="<%= op_c.get(2)%>"><%= " " + op_c.get(2) %></label>
		  		</div>
		  		<div class="radio ">
		  		 <label><input type="radio" name="Q3" value="<%= op_d.get(2)%>"><%= " " + op_d.get(2) %></label>
		  		</div>
		  		 <input type="hidden" name="A3" value="<%= answer.get(2)%>">  
		  		</div>
		  	</div>
		  </div>
	    </div>
	    <div class="carousel-item" data-interval="100000000">
	      <div class="d-flex justify-content-center">
			  <div class="card mt-4 mb-4" style="width: 18rem;">
			 	  <img src="<%=image.get(3) %>" class="card-img-top" alt="..." height="250px">
			 	   <div class="card-body">
					<p class="card-text"><%= question.get(3) %></p>
			  	    <div class="radio">
			  		 <label><input type="radio" name="Q4" value="<%= op_a.get(3)%>"><%= " " + op_a.get(3) %></label>
			  		</div>
			  		<div class="radio">
			  		 <label><input type="radio" name="Q4" value="<%= op_b.get(3)%>"><%= " " + op_b.get(3) %></label>
			  		</div>
			  		<div class="radio ">
			  		 <label><input type="radio" name="Q4" value="<%= op_c.get(3)%>"><%= " " + op_c.get(3) %></label>
			  		</div>
			  		<div class="radio ">
			  		 <label><input type="radio" name="Q4" value="<%= op_d.get(3)%>"><%= " " + op_d.get(3) %></label>
			  		</div>
			  		 <input type="hidden" name="A4" value="<%= answer.get(3)%>">  
			  		</div>
			  	</div>
			  </div>
	    </div>
	    <div class="carousel-item" data-interval="100000000">
	      <div class="d-flex justify-content-center">
		  <div class="card mt-4 mb-4" style="width: 18rem;">
		 	  <img src="<%=image.get(4) %>" class="card-img-top" alt="..." height="250px">
		 	   <div class="card-body">
				<p class="card-text"><%= question.get(4) %></p>
		  	    <div class="radio">
		  		 <label><input type="radio" name="Q5" value="<%= op_a.get(4)%>"><%= " " + op_a.get(4) %></label>
		  		</div>
		  		<div class="radio">
		  		 <label><input type="radio" name="Q5" value="<%= op_b.get(4)%>"><%= " " + op_b.get(4) %></label>
		  		</div>
		  		<div class="radio ">
		  		 <label><input type="radio" name="Q5" value="<%= op_c.get(4)%>"><%= " " + op_c.get(4) %></label>
		  		</div>
		  		<div class="radio ">
		  		 <label><input type="radio" name="Q5" value="<%= op_d.get(4)%>"><%= " " + op_d.get(4) %></label>
		  		</div>
		  		 <input type="hidden" name="A5" value="<%= answer.get(4)%>">
		  		</div>
		  	</div>
		  </div>
	    </div>
	  </div>
	  <a class="carousel-control-prev" href="#carouselExampleInterval" role="button" data-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="sr-only">Previous</span>
	  </a>
	  <a class="carousel-control-next" href="#carouselExampleInterval" role="button" data-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	  </a>
	</div>
		
	 
	  
	  
	  
	  
	  
	  
	  
	  
		<center><button type="submit" class="btn btn-success btn-md">Submit</button></center>
		<br/><br/>
	</div>
	
	</form>
	
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