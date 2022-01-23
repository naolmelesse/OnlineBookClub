<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="home.css">
    
    <title>The book club</title>
</head>
<body>
    <div class="nav-bar">
        <h1>The Book Club</h1>

        <a href="home.jsp">Home</a>
        <a href="books.html">Books</a>
        <a href="members.html">Members</a>
        <a href="">Sign-out</a>
    </div>
    <div class="body-container">
        <h2>Book of the week</h2>
        <div class="book-thumbnail"><img src="images/book3.jfif" alt=""></div>

        <div class="weekly-book">
            <div class="bookslist" style="display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 10px">
    
    	<%@ page import="java.sql.* " %>
		<%@ page import="javax.sql.* " %>
		<%@ include file="DBconnector.jsp" %>
		
		
                <div> <h1>Title</h1></div>
                <div> <h1>Author</h1></div>
                <div> <h1>Book ID</h1></div>
                <div> <h1>Available</h1></div>
             </div>
                <div style"display: flex; width: 600px"><h1>
                <%
		 Statement stmt = con.createStatement();
		  ResultSet rs=stmt.executeQuery(" select * from books");  
	        while(rs.next()){

		out.print(rs.getString(1)+" | "+rs.getString(2)+" | "+rs.getString(3)+" | "+rs.getString(4));
		 %>
		 	<br><br>
		 <%
	        }
		%>  
		</h1>
				</div>
            
            
        <form action="addBook.jsp" method="get">
        	 <input type="submit" value="Add Book"> <br>
        </form>
        <form action="deleteBook.jsp" method="get">
        	 <input type="submit" value="Remove Book"> <br>
        </form>
        <form action="updateBook.jsp" method="get">
        	 <input type="submit" value="Update Book Details"> <br>
        </form>
            
        </div>
    </div>
    
    
</body>
</html>