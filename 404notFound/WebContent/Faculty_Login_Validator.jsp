<%@page import="db_data.*"%>
<%@page import="java.sql.*" %>


<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	

	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	try{
		String sql = "select * from FACULTY where EMAIL_ADDRESS = ? and PASSWORD = ?";
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(DB_Details.getURL(), DB_Details.getUsername(), DB_Details.getPassword());
		stmt = con.prepareStatement(sql);
		stmt.setString(1, email);
		stmt.setString(2, password);
		rs = stmt.executeQuery();
		if(rs.next()){
			session.setAttribute("Faculty_Login", email);
			%>
				<script>
					alert("Login Successful..");
				</script>
			<%
			RequestDispatcher rd = request.getRequestDispatcher("Faculty_Portal");
			rd.include(request, response);
		}
		else{
			%>
				<script>
					alert("Login Failed..Wrong Username or Password");
				</script>
			<%
			RequestDispatcher rd = request.getRequestDispatcher("Faculty_Login");
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
		RequestDispatcher rd = request.getRequestDispatcher("Faculty_Login");
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