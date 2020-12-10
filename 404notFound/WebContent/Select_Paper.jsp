<%
	session.removeAttribute("desc_date");
	session.removeAttribute("desc_subject");
	session.removeAttribute("desc_subject_code");

	String date = request.getParameter("date");
	String subject = request.getParameter("subject");
	String subject_code = request.getParameter("subject_Code");
	String paper_type = request.getParameter("paper_type");
	
	if(paper_type.equals("Objective")){
		response.sendRedirect("Create_Objective");
	}
	else{
		session.setAttribute("desc_date", date);
		session.setAttribute("desc_subject", subject);
		session.setAttribute("desc_subject_code", subject_code);
		response.sendRedirect("Descriptive");
	}
%>