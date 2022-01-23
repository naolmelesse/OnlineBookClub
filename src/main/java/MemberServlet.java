

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jakarta.servlet.RequestDispatcher;


public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public DBconnect db = new DBconnect();
    
    public MemberServlet() {
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(jakarta.servlet.http.HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/sign-up.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String city = request.getParameter("city");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirmPassword");
		
		Member member = new Member();
		member.setName(name);
		member.setEmail(email);
		member.setCity(city);
		member.setPassword(password);
		member.setConfirmPassword(confirmPassword);
		
		db.registerMember(member);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/registered.jsp");
		dispatcher.forward(request, response);
	}

}
