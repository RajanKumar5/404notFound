<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	
%>

<%@page import="java.sql.*"%>
<%@page import="db_data.*" %>

<%
	String email = request.getParameter("email");
	String fullname = request.getParameter("fullname");
	String mobile = request.getParameter("mobile");
	String date = request.getParameter("date");
	String password = request.getParameter("password");
	
	Connection con = null;
	PreparedStatement stmt = null;
	try{
		String sql = "insert into users values(?, ?, ?, ?, ?, ?)";
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(DB_Details.getURL(), DB_Details.getUsername(), DB_Details.getPassword());
		stmt = con.prepareStatement(sql);
		stmt.setString(1, email);
		stmt.setString(2, mobile);
		stmt.setString(3, fullname);
		stmt.setString(4, password);
		stmt.setInt(5, 1);
		stmt.setString(6, date);
		stmt.executeUpdate();
		session.setAttribute("tmp-email", email);
		%>
			<script>
				alert("Your account has been created! Please verify your account.")
			</script>
		<%
		RequestDispatcher rd = request.getRequestDispatcher("Account-Verification");
		rd.include(request, response);
	}
	catch(Exception e){
		e.printStackTrace();
		if(e instanceof SQLIntegrityConstraintViolationException){
			%>
 			<script>
				alert("Account already exists with this Email. Please login.");
			</script> 
			<%
	 		RequestDispatcher rd = request.getRequestDispatcher("Login");
			rd.include(request, response);
		}
		else{
			%>
			<script type="text/javascript">
				alert("Something went wrong! Try again later.")	
			</script>
			<%
			RequestDispatcher rd = request.getRequestDispatcher("SignUp");
			rd.include(request, response);	
		}
	}
	finally{
		if(stmt != null){
			stmt.close();
		}
		if(con != null){
			con.close();
		}
	}
%>