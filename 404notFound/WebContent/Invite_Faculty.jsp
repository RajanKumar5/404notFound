<%@page import="db_data.*" %>
<%@page import="mail_service.*" %>
<%@page import="java.sql.*" %>

<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	
	if(session.getAttribute("Admin_Email") == null){
		response.sendRedirect("Home");
	}
	String email = request.getParameter("email");
	String password = DB_Details.generatePassword();
	
	Connection con = null;
	PreparedStatement stmt = null;
	try{
		String sql = "insert into FACULTY(EMAIL_ADDRESS, PASSWORD, VERIFICATION, OTP, OTP_FLAG) values(?, ?, ?, ?, ?)";
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(DB_Details.getURL(), DB_Details.getUsername(), DB_Details.getPassword());
		stmt = con.prepareStatement(sql);
		stmt.setString(1, email);
		stmt.setString(2, password);
		stmt.setInt(3, 0);
		stmt.setInt(4, 0000);
		stmt.setInt(5, 0);
		stmt.executeUpdate();
		String sub = "Faculty Registration Link For Online Examination Portal";
		String link = "http://localhost:8080/404notFound/Verify_Faculty";
		String msg = "Dear Faculty,\n\nYou have been to Online Examination Portal.\nPlease register yourself through this link : " + link + "\nYour Email Address : " + email + "\nYour one time password : " + password + "\n\nThanks.\nAdmin@404notFound";
		JavaMailUtil.sendPasswordMail(email, sub, msg);
		%>
			<script>
				alert("Invitation Sent Successfully..");
			</script>
		<%
		RequestDispatcher rd = request.getRequestDispatcher("Add_Remove_Faculty");
		rd.include(request, response);
	}
	catch(Exception e){
		e.printStackTrace();
		if(e instanceof SQLIntegrityConstraintViolationException){
			%>
				<script>
					alert("You have already invited this faculty..");
				</script>
			<%
			RequestDispatcher rd = request.getRequestDispatcher("Add_Remove_Faculty");
			rd.include(request , response);
		}
		else{
			%>
				<script>
					alert("Something Went Wrong..Try Again Later..");
				</script>
			<%
			RequestDispatcher rd = request.getRequestDispatcher("Add_Remove_Faculty");
			rd.include(request , response);
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
