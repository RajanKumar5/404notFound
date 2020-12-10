<%@page import="java.sql.*" %>
<%@page import="db_data.*"%>

<%
		
		String subject = session.getAttribute("desc_subject") + "";
		String ques = request.getParameter("question");

		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try{
			String sql = "insert into THEORY_TEST(QUESTION_STATEMENT, SUBJECT_NAME) values(?, ?)";
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(DB_Details.getURL(), DB_Details.getUsername(), DB_Details.getPassword());
			stmt = con.prepareStatement(sql);
			stmt.setString(1, ques);
			stmt.setString(2, subject);
			stmt.executeUpdate();
			%>
				<script>
					alert("Question Added Successfully..");
				</script>
			<%
			RequestDispatcher rd = request.getRequestDispatcher("Descriptive");
			rd.include(request, response);
		}
		catch(Exception e){
			e.printStackTrace();
			%>
				<script>
					alert("Something Went Wrong..Try Again Later..");
				</script>
			<%
			RequestDispatcher rd = request.getRequestDispatcher("Descriptive");
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