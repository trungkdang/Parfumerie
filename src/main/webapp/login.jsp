<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	String me = (String)session.getAttribute("me");
	if(me != null) {
		response.sendRedirect("index.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Parfumerie - Login</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            padding: 25px;
        }
        
        
    </style>
</head>
<body>
    <script src="form.js"></script>
    <jsp:include page="header.html"></jsp:include>
    <form class="form" action="login-auth.jsp">
    	<br><br>
        <div class="form_title">
                Log in
        </div>
        <div class="form_item">
            <label for="username" class="form_label">Username</label>
            <input type="text" class="form_input" name="username" id="username" placeholder="Enter your username"> 
            
            <label for="password" class="form_label">Password</label>
            <input type="password" class="form_input" name="password" id="password" placeholder="Enter your password">
            
         </div>
         <br>
         
         <div class="form_item">
         	<button class="form_btn" type="submit">Login</button>
         </div>
    </form>
<div id="footer">    
<jsp:include page="footer.html"></jsp:include>
</div>
</body>
</html>