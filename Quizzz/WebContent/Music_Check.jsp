<%@page import="java.sql.*" %>
<%@page import="db_data.*" %>

<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	

	if(session.getAttribute("email") == null){
		response.sendRedirect("Login");
	}
	
	int score = 0;
	String email = session.getAttribute("email") + "";
	
	session.setAttribute("Q10", request.getParameter("Q"));
	session.setAttribute("A10", request.getParameter("A"));
	
	if(session.getAttribute("Q1").equals(session.getAttribute("A1"))){
		score++;
	}
	if(session.getAttribute("Q2").equals(session.getAttribute("A2"))){
		score++;
	}
	if(session.getAttribute("Q3").equals(session.getAttribute("A3"))){
		score++;
	}
	if(session.getAttribute("Q4").equals(session.getAttribute("A4"))){
		score++;
	}
	if(session.getAttribute("Q5").equals(session.getAttribute("A5"))){
		score++;
	}
	if(session.getAttribute("Q6").equals(session.getAttribute("A6"))){
		score++;
	}
	if(session.getAttribute("Q7").equals(session.getAttribute("A7"))){
		score++;
	}
	if(session.getAttribute("Q8").equals(session.getAttribute("A8"))){
		score++;
	}
	if(session.getAttribute("Q9").equals(session.getAttribute("A9"))){
		score++;
	}
	if(session.getAttribute("Q10").equals(session.getAttribute("A10"))){
		score++;
	}

	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	try{
		String sql = "update users set points = points + ? where email = ?";
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(DB_Details.getURL(), DB_Details.getUsername(), DB_Details.getPassword());
		stmt = con.prepareStatement(sql);
		stmt.setInt(1, score);
		stmt.setString(2, email);
		stmt.executeUpdate();
	}
	catch(Exception e){
		e.printStackTrace();
		%>
			<script>
				alert("Something went wrong! Try again later.")
			</script>
		<%
		RequestDispatcher rd = request.getRequestDispatcher("Profile");
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
		<script>
			alert("congratulations you scored <%= score%> points.")
		</script>
	<%
	RequestDispatcher rd = request.getRequestDispatcher("Profile");
	rd.include(request, response);
%>
