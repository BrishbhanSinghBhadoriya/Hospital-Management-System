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




@WebServlet("/Admin/AdminMedicine")
public class AdminMedicine extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AdminMedicine() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
		
        response.setContentType("text/html");

        String prescriptionDate = request.getParameter("prescriptionDate");
        String patientName = request.getParameter("patientName");
        String birthdate = request.getParameter("birthdate");
        String medication1 = request.getParameter("medication1");
        String dose1 = request.getParameter("dose1");
        String instructions1 = request.getParameter("instructions1");
        String days1 = request.getParameter("days1");
        String medication2 = request.getParameter("medication2");
        String dose2 = request.getParameter("dose2");
        String instructions2 = request.getParameter("instructions2");
        String days2 = request.getParameter("days2");
        String doctorName = request.getParameter("doctorName");

        PrintWriter out = response.getWriter();
        int i = 0;

        try {
           
            Connection cn = Conn.getConn();

            
            String ins = "INSERT INTO admedicine(prescriptionDate, patientName, birthdate, medication1, dose1, instructions1, days1, medication2, dose2, instructions2, days2, doctorName) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = cn.prepareStatement(ins);

          
            ps.setString(1, prescriptionDate);
            ps.setString(2, patientName);
            ps.setString(3, birthdate);
            ps.setString(4, medication1);
            ps.setString(5, dose1);
            ps.setString(6, instructions1);
            ps.setInt(7, Integer.parseInt(days1)); 
            ps.setString(8, medication2);
            ps.setString(9, dose2);
            ps.setString(10, instructions2);
            ps.setInt(11, Integer.parseInt(days2)); 
            ps.setString(12, doctorName);

        
            i = ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        if (i > 0) {
            out.print("<center><h1>Appointment Booked Successfully!</h1></center>");
            RequestDispatcher rd = request.getRequestDispatcher("/Admin/Welcome.jsp");
            rd.forward(request, response);
        } else {
            out.print("<center><h1>Something went wrong!</h1></center>");
            RequestDispatcher rd = request.getRequestDispatcher("/Admin/Admin_Medicine.jsp"); 
            rd.include(request, response);
        }
	}

}

