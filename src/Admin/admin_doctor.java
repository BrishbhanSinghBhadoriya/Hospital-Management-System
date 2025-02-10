package Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Conn.Conn;

/**
 * Servlet implementation class admin_doctor
 */
@WebServlet("/admin/admin_doctor")
public class admin_doctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin_doctor() {
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
		
		
		response.setContentType("text/html");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String phone=request.getParameter("phone");
		String speciality=request.getParameter("speciality");
		String experience=request.getParameter("experience");

		
		
		PrintWriter out=response.getWriter();
		int i=0;
		try{
			Connection ds=Conn.getConn();
			
			String ins ="insert into reg(name,email,pass,phone,speciality,experience)values(?,?,?,?,?,?)";
	        PreparedStatement ps=ds.prepareStatement(ins);
			
		   ps.setString(1,name);
		   ps.setString(2,email);
		   ps.setString(3,pass);
		   ps.setString(4,phone);
		   ps.setString(5,speciality);
		   ps.setString(6,experience);

		   
	        i=ps.executeUpdate();
		}
			catch (Exception e){
				e.printStackTrace();
			}
			if(i>0)
			{
				out.println("<center><h1>data inserted successfully </h1></center>");
				RequestDispatcher rd =request.getRequestDispatcher("/admin/Welcome.jsp");
				rd.include(request, response);
			
	         }
			else{
				out.println("<center><h1>somthin is worng </h1></center>");
				RequestDispatcher rd =request.getRequestDispatcher("/admin/admin_doctor.jsp");
				rd.forward(request, response);
				
			}
			
	}	
}


