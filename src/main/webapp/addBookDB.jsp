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

	String title = request.getParameter("title");
	String author = request.getParameter("author");
	String status = request.getParameter("status");
	String bid = request.getParameter("bid").toString();
    PreparedStatement stmt = con.prepareStatement("INSERT INTO books VALUES(?,?,?,?)");
        
        stmt.setString(1, title);
        stmt.setString(2, author);
        stmt.setString(3, bid);
        stmt.setString(4, status);

        
        stmt.executeUpdate();
       	
		out.print("Book Added Successfully.");
 
        con.close();
    
	%>
</body>
</html>