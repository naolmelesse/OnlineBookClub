
import java.sql.*;

public class DBconnect {
	
	public int registerMember(Member member) throws ClassNotFoundException{
		Class.forName("com.mysql.cj.jdbc.Driver");
	        try {
	        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookclub", "root","");
	            PreparedStatement stmt = con.prepareStatement("INSERT INTO members VALUES(?,?,?,?,?)");
	            
	            stmt.setString(1, member.getName());
	            stmt.setString(2, member.getEmail());
	            stmt.setString(3, member.getCity());
	            stmt.setString(4, member.getPassword());
	            stmt.setString(5, member.getConfirmPassword());
	            
	            stmt.executeUpdate();



	            stmt.executeUpdate();
	            con.close();
	        }
	        catch(SQLException s){
	        	System.out.print(s);
	        }
	        
	        return 0;
	}

}
