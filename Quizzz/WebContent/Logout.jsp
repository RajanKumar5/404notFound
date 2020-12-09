<% 
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	session.invalidate();
	response.sendRedirect("Home");
%>.