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

@WebServlet("/admin/admin_patient")
public class admin_patient extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Retrieve form parameters
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		String phone = request.getParameter("phone");
		String bloodGroup = request.getParameter("blood_group");
		String doctorName = request.getParameter("doctor_name");

		PrintWriter out = response.getWriter();
		int i = 0;
		try {
			Connection ds = Conn.getConn();

			String ins = "insert into patient(name,email,pass,phone,blood_Group,doctor_name)values(?,?,?,?,?,?)";
			PreparedStatement ps = ds.prepareStatement(ins);

			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.setString(4, phone);
			ps.setString(5, bloodGroup);
			ps.setString(6, doctorName);

			i = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (i > 0) {
			out.println("<center><h1>data inserted successfully </h1></center>");
			RequestDispatcher rd = request.getRequestDispatcher("/admin/admin_nav.jsp");
			rd.include(request, response);

		} else {
			out.println("<center><h1>somthin is worng </h1></center>");
			RequestDispatcher rd = request.getRequestDispatcher("/admin/admin_patient.jsp");
			rd.forward(request, response);

		}

	}
}
