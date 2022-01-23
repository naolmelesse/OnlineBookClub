<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
	<%@ page import="java.sql.* " %>
	<%@ page import="javax.sql.* " %>
	<%@ include file="DBconnector.jsp" %>
	<%
	
	String name = request.getParameter("name");
	String email = request.getParameter("user-email");
	String city = request.getParameter("city");
	String password = request.getParameter("password");
	String confirmPassword = request.getParameter("confirmPassword");
	session.putValue("name", name);
	
    PreparedStatement stmt = con.prepareStatement("INSERT INTO members VALUES(?,?,?,?,?)");
        
        stmt.setString(1, name);
        stmt.setString(2, email);
        stmt.setString(3, city);
        stmt.setString(4, password);
        stmt.setString(5, confirmPassword);

        
        stmt.executeUpdate();
       	
		out.print("Registered Successfully.");
 
        con.close();
    
	%>
</body>
</html>