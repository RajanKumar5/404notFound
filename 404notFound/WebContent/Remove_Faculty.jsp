<%@page import="java.sql.*" %>
<%@page import="db_data.*" %>

<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if(session.getAttribute("Admin_Email") == null){
		response.sendRedirect("Home");
	}
	String email = request.getParameter("hidden_email");
	
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	try{
		String sql = "delete from FACULTY where EMAIL_ADDRESS = ?";
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(DB_Details.getURL(), DB_Details.getUsername(), DB_Details.getPassword());
		stmt = con.prepareStatement(sql);
		stmt.setString(1, email);
		stmt.executeUpdate();
		%>
			<script>
				alert("Faculty Removed Successfully...");
			</script>
		<%
		RequestDispatcher rd  = request.getRequestDispatcher("Add_Remove_Faculty");
		rd.include(request, response);
	}
	catch(Exception e){
		e.printStackTrace();
		%>
			<script>
				alert("Something Went Wrong..Try Again Later..");
			</script>
		<%
		RequestDispatcher rd = request.getRequestDispatcher("Add_Remove_Faculty");
		rd.include(request , response);
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
