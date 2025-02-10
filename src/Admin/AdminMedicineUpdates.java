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




@WebServlet("/Admin/AdminMedicineUpdate")
public class AdminMedicineUpdates extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public AdminMedicineUpdates() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
		
		 response.setContentType("text/html");
	        
	       
	        int id1 = Integer.parseInt(request.getParameter("id"));
	        String prescriptionDate = request.getParameter("prescriptionDate");
	        String patientName = request.getParameter("patientName");
	        String birthdate = request.getParameter("birthdate");
	        String medication1 = request.getParameter("medication1");
	        String dose1 = request.getParameter("dose1");
	        String instructions1 = request.getParameter("instructions1");
	        int days1 = Integer.parseInt(request.getParameter("days1"));
	        String medication2 = request.getParameter("medication2");
	        String dose2 = request.getParameter("dose2");
	        String instructions2 = request.getParameter("instructions2");
	        int days2 = Integer.parseInt(request.getParameter("days2"));
	        String doctorName = request.getParameter("doctorName");

	        PrintWriter out = response.getWriter();
	        int i = 0;

	        try {
	            
	            Connection cn = Conn.getConn();

	            
	            String update = "UPDATE admedicine SET prescriptionDate=?, patientName=?, birthdate=?, medication1=?, dose1=?, instructions1=?, days1=?, medication2=?, dose2=?, instructions2=?, days2=?, doctorName=? WHERE id=?";
	            PreparedStatement ps = cn.prepareStatement(update);

	            
	            ps.setString(1, prescriptionDate);
	            ps.setString(2, patientName);
	            ps.setString(3, birthdate);
	            ps.setString(4, medication1);
	            ps.setString(5, dose1);
	            ps.setString(6, instructions1);
	            ps.setInt(7, days1);
	            ps.setString(8, medication2);
	            ps.setString(9, dose2);
	            ps.setString(10, instructions2);
	            ps.setInt(11, days2);
	            ps.setString(12, doctorName);
	            ps.setInt(13, id1);

	           
	            i = ps.executeUpdate();

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	      
	        if (i > 0) {
	            out.print("<center><h1>Prescription Updated Successfully!</h1></center>");
	            RequestDispatcher rd = request.getRequestDispatcher("/Admin/Welcome.jsp");
	            rd.forward(request, response);
	        } else {
	            out.print("<center><h1>Unable to Update Prescription. Try Again!</h1></center>");
	            RequestDispatcher rd = request.getRequestDispatcher("/Admin/Admin_Medicine_Up.jsp");
	            rd.include(request, response);
	        }
	}

}

