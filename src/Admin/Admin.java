package Admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Conn.Conn;

/**
 * Servlet implementation class Admin
 */
@WebServlet("/Admin")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		
		try
		{
			Connection ds = Conn.getConn();
			String ad = "select * from admin where email ='"+email+"' and password ='"+pass+"'";
			PreparedStatement ps = ds.prepareStatement(ad);
			ResultSet st = ps.executeQuery();
			if(st.next())
			{
				HttpSession httpSession = request.getSession();
				httpSession.setAttribute("email", email);
				response.sendRedirect("http://localhost:8081/HMS/admin/adminsection.jsp");
			}
			else 
			{
				System.out.println("error");
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
