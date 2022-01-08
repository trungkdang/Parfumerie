<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%	String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(username.equals("admin") && password.equals("admin")) {
			out.print("Login success");
			session.setAttribute("me", username);
			response.sendRedirect("index.jsp");
	%>
	
	<%} else {%>
		
	Login failed!
	<br/>
	<a href="login.html">Back to login page</a>
			
		<%}
		%>
		
	
</body>
</html>