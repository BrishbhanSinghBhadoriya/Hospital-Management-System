<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Display Medicine Prescription</title>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <%@include file = "Nav.jsp" %>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
        .care-details-header {
            text-align: center;
            margin-bottom: 30px;
        }
        .care-details-header h2 {
            font-size: 2rem;
            color: #007bff;
        }
        .filter-links {
            text-align: center;
            margin-bottom: 20px;
        }
        .filter-links a {
            margin: 0 10px;
            font-size: 1.2rem;
            text-decoration: none;
            color: #007bff;
            border: 1px solid #007bff;
            padding: 5px 10px;
            border-radius: 5px;
        }
        .filter-links a:hover {
            background-color: #007bff;
            color: #fff;
        }
        .prescription-section {
            padding: 20px;
            background-color: #f0f8ff;
            border-radius: 8px;
            margin-top: 40px;
        }
        .prescription-section h3 {
            font-size: 1.5rem;
            color: #007bff;
        }
        .prescription-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }
        .prescription-table th, .prescription-table td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }
        .btn-back {
            display: block;
            width: 200px;
            margin: 30px auto;
            text-align: center;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            font-size: 1.2rem;
            border-radius: 5px;
            text-decoration: none;
        }
        .btn-back:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="care-details-header">
        <h2>
            Medications for <%= request.getParameter("category") == null ? "All Categories" : request.getParameter("category") %>
        </h2>
    </div>

    <!-- Filter Links -->
    <div class="filter-links">
        <a href="cardiac-care-details.jsp?category=Cardiac Care">Cardiac Care</a>
        <a href="stomach-care-details.jsp?category=Stomach Care">Stomach Care</a>
        <a href="diabetic-care-details.jsp?category=Heart Care">Diabetic Care</a>
         <a href="cold-fever-care-details.jsp?category=Cardiac Care">Cold & Fever Care</a>
        <a href="kidney-care-details.jsp?category=Stomach Care">Kidney Care</a>
        <a href="liver-care-details.jsp?category=Heart Care">Liver Care</a>
         <a href="oral-care-details.jsp?category=Stomach Care">Oral Care</a>
        <a href="pain-relief-care-details.jsp?category=Heart Care">Pain Relief Care</a>
       
    </div>

    <div class="prescription-section">
        <h3>Prescribed Medications</h3>
        
        <table class="prescription-table">
            <thead>
                <tr>
                    <th>Patient Name</th>
                    <th>Birthdate</th>
                    <th>Medication 1</th>
                    <th>Dosage 1</th>
                    <th>Instructions 1</th>
                    <th>Duration 1 (Days)</th>
                    <th>Medication 2</th>
                    <th>Dosage 2</th>
                    <th>Instructions 2</th>
                    <th>Duration 2 (Days)</th>
                    <th>Doctor Name</th>
                </tr>
            </thead>
            <tbody>
                <%
                    String category = request.getParameter("category"); // Retrieve category from URL
                    Connection conn = null;
                    PreparedStatement pstmt = null;
                    ResultSet rs = null;

                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms", "root", "root");
                        
                        String sql;
                        if (category != null) {
                            sql = "SELECT * FROM admedicine WHERE category = ?";
                            pstmt = conn.prepareStatement(sql);
                            pstmt.setString(1, category);
                        } else {
                            sql = "SELECT * FROM admedicine";
                            pstmt = conn.prepareStatement(sql);
                        }

                        rs = pstmt.executeQuery();

                        while (rs.next()) {
                %>
                            <tr>
                                <td><%= rs.getString("patientName") %></td>
                                <td><%= rs.getString("birthdate") %></td>
                                <td><%= rs.getString("medication1") %></td>
                                <td><%= rs.getString("dose1") %></td>
                                <td><%= rs.getString("instructions1") %></td>
                                <td><%= rs.getInt("days1") %></td>
                                <td><%= rs.getString("medication2") %></td>
                                <td><%= rs.getString("dose2") %></td>
                                <td><%= rs.getString("instructions2") %></td>
                                <td><%= rs.getInt("days2") %></td>
                                <td><%= rs.getString("doctorName") %></td>
                            </tr>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        if (rs != null) rs.close();
                        if (pstmt != null) pstmt.close();
                        if (conn != null) conn.close();
                    }
                %>
            </tbody>
        </table>
    </div>

    <a href="Index.jsp" class="btn-back">Back to Categories</a>
</div>

</body>
</html>

