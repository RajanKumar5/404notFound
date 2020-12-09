<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	
%>

<%@page import="java.sql.*" %>
<%@page import="db_data.*" %>


<% 
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String date = request.getParameter("date");
	String password = request.getParameter("password");
		
	Connection con = null;
	PreparedStatement stmt = null;
	PreparedStatement stmt1 = null;
	ResultSet rs = null;
	
	try{
		String sql = "select * from users where email=? and mobile=? and dob=?";
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(DB_Details.getURL(), DB_Details.getUsername(), DB_Details.getPassword());
		stmt = con.prepareStatement(sql);
		stmt.setString(1, email);
		stmt.setString(2, mobile);
		stmt.setString(3, date);
		rs = stmt.executeQuery();
		if(rs.next()){
			sql = "update users set password = ? where email = ?";
			stmt1 = con.prepareStatement(sql);
			stmt1.setString(1, password);
			stmt1.setString(2, email);
			stmt1.executeUpdate();
			%>
				<script>
					alert("Password changed successfully!")
				</script>
			<%
			RequestDispatcher rd = request.getRequestDispatcher("Login");
			rd.include(request, response);
		}
		else{
			%>
				<script>
					alert("Cannot find your account.")
				</script>
			<%
			RequestDispatcher rd = request.getRequestDispatcher("Forgot");
			rd.include(request, response);
		}
		
	}
	catch(Exception e){
		e.printStackTrace();
		%>
			<script>
				alert("Something went wrong! Try again later.")
			</script>
		<%
		RequestDispatcher rd = request.getRequestDispatcher("Forgot");
		rd.include(request, response);
	}
	finally{
		if(rs != null){
			rs.close();
		}
		if(stmt != null){
			stmt.close();
		}
		if(stmt1 != null){
			stmt1.close();
		}
		if(con != null){
			con.close();
		}
	}
%>