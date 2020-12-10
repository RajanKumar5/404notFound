<%@page import="db_data.*"%>
<%@page import="java.sql.*" %>


<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	

	String email = request.getParameter("email");
	String otp = request.getParameter("one_time_password");
	String new_password = request.getParameter("new_password");
	String dob = request.getParameter("dob");
	String name = request.getParameter("name");
	
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	try{
		String sql1 = "select * from FACULTY where EMAIL_ADDRESS = ? and PASSWORD = ?";
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(DB_Details.getURL(), DB_Details.getUsername(), DB_Details.getPassword());
		stmt = con.prepareStatement(sql1);
		stmt.setString(1, email);
		stmt.setString(2, otp);
		rs = stmt.executeQuery();
		if(rs.next()){
			String sql2 = "update FACULTY set PASSWORD = ?, name = ?, dob = ?, verification = ? where EMAIL_ADDRESS = ?";
			stmt.close();
			stmt = con.prepareStatement(sql2);
			stmt.setString(1, new_password);
			stmt.setString(2, name);
			stmt.setString(3, dob);
			stmt.setInt(4, 1);
			stmt.setString(5, email);
			stmt.executeUpdate();
			session.setAttribute("Faculty_email", email);
			%>
				<script>
					alert("Account verified..Please Login");
				</script>
			<%
			RequestDispatcher rd = request.getRequestDispatcher("Faculty_Login");
			rd.include(request, response);
		}
		else{
			%>
				<script>
					alert("Invalid One Time Password or Email Address");
				</script>
			<%
			RequestDispatcher rd = request.getRequestDispatcher("Verify_Faculty");
			rd.include(request, response);
		}
	}
	catch(Exception e){
		e.printStackTrace();
		%>
			<script>
				alert("Something Went Wrong..Try Again Later..");
			</script>
		<%
		RequestDispatcher rd = request.getRequestDispatcher("Home");
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