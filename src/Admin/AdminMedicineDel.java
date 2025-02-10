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



@WebServlet("/Admin/AdminMedicineDel")
public class AdminMedicineDel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AdminMedicineDel() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
		
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        int id1 = Integer.parseInt(request.getParameter("id"));
        int result = 0;

        try {
            
            Connection cn = Conn.getConn();
            

            
            String delete = "DELETE FROM admedicine WHERE id = ?";
            PreparedStatement ps = cn.prepareStatement(delete);

           
            ps.setInt(1, id1);

           
            result = ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

       
        if (result > 0) {
            out.print("<center><h1>Prescription Deleted Successfully!</h1></center>");
            RequestDispatcher rd = request.getRequestDispatcher("/Admin/Welcome.jsp");
            rd.forward(request, response);
        } else {
            out.print("<center><h1>Error: Unable to Delete Prescription.</h1></center>");
            RequestDispatcher rd = request.getRequestDispatcher("/Admin/Admin_Medicine_Del.jsp");
            rd.include(request, response);
        }
	}

}

