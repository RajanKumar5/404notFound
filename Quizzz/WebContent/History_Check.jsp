<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	

	if(session.getAttribute("email") == null){
		response.sendRedirect("Login");
	}
%>

<%
	if(request.getParameter("Q1") == null || request.getParameter("Q2") == null || request.getParameter("Q3") == null || request.getParameter("Q4") == null || request.getParameter("Q5") == null){
		%>
		<script>
			alert("All questions are mandatory!")
		</script>		
		<%
			RequestDispatcher rd = request.getRequestDispatcher("Music");
			rd.include(request, response);
	}
	else{
		int score = 0;
		String comment = "";
		if(request.getParameter("Q1").equals(request.getParameter("A1"))){
			score++;
		}
		if(request.getParameter("Q2").equals(request.getParameter("A2"))){
			score++;
		}
		if(request.getParameter("Q3").equals(request.getParameter("A3"))){
			score++;
		}
		if(request.getParameter("Q4").equals(request.getParameter("A4"))){
			score++;
		}
		if(request.getParameter("Q5").equals(request.getParameter("A5"))){
			score++;
		}
		if(score <= 2){
			comment = "Better Luck Next Time!";
		}
		if(score >= 3 && score <= 4){
			comment = "Good Job!";
		}
		
		if(score == 5){
			comment = "Excellent!";
		}
		%>
			<script>
				alert("<%= comment%> You scored <%= score%> of 5 \n\n  Scroll Down For Correct Answers")
			</script>		
			
			<style>
				table tr td{
					color: green;
				}
			</style>
			
			<center>
				<p style="color: green">Answer :-</p>
				<table>
					<tr>
						<td>1. </td>
						<td><%=request.getParameter("A1") %></td>
					</tr>
					<tr>
						<td>2. </td>
						<td><%=request.getParameter("A2") %></td>
					</tr>
					<tr>
						<td>3. </td>
						<td><%=request.getParameter("A3") %></td>
					</tr>
					<tr>
						<td>4. </td>
						<td><%=request.getParameter("A4") %></td>
					</tr>
					<tr>
						<td>5. </td>
						<td><%=request.getParameter("A5") %></td>
					</tr>
				</table>
			</center>
			<br/><br/>
		<%
		RequestDispatcher rd = request.getRequestDispatcher("History");
		rd.include(request, response);
	}
%>