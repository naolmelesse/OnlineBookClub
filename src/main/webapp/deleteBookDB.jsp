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

	String bid = request.getParameter("bid");
    PreparedStatement stmt = con.prepareStatement("delete from books where bid = ?");
        
        stmt.setString(1, bid);


        
        stmt.executeUpdate();
       	
		out.print("Book Deleted Successfully.");
 
        con.close();
    
	%>
</body>
</html>