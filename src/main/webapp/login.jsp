<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Sign in</title>
</head>
<body>

		<%@ page import="java.sql.* " %>
		<%@ page import="javax.sql.* " %>
		<%@ include file="DBconnector.jsp" %>
		<% 
		   String email =  request.getParameter("user-email");
		   String pwd = request.getParameter("password");
		   Statement stmt = con.createStatement();
		  ResultSet rs=stmt.executeQuery(" select * from members");  
		   //PreparedStatement stmt = con.prepareStatement();
		   boolean userExist = false;
	        while(rs.next()){
	        	//System.out.println(rs.getString(1)+"  "+rs.getString(2)+"  "+rs.getString(3)+"  "+rs.getString(4)+"  "+rs.getString(5));
	        	
	        	if(rs.getString(2).equals(email) && rs.getString(4).equals(pwd)){
	        		userExist = true;
	        	}

					
	        }
	        out.print(userExist);
	        if(userExist){
	            String redirectURL = "home.jsp";
	            response.sendRedirect(redirectURL);
	       	     out.print("User exists.");   
	        }else{	
	    %>
	     <div class="main-container">
        <div class="title-bar">
            <h1>The Book Club</h1>
        </div>
        <div class="container">
            <div class="sign-in-box">
                <form action="login.jsp" method="post">
                   <h3 style="color:red">Wrong email/password!</h1>
                   Email: <br>
                   <input type="text" name="user-email" id=""><br>
                   Password: <br>
                   <input type="password" name="password" id=""> <br>
                   <input type="submit" value="login"> <br>
                   <a href="sign-up.html">Don't have an account? Sign up here</a>
                </form>
                
            </div>
           
        </div>
    </div>
	    
	    <%
	     	    			
	        }
		%>

</body>
</html>