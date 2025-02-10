<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="admin-nav.jsp" %>
<style>
    /* Make the image responsive and scale according to the page size */
    img {
        max-width: 100%; /* Scales image to the width of its parent container */
        height: auto; /* Keeps the image's aspect ratio */
    }
</style>
</head>
<body>
<%
session = request.getSession();
String email = (String)session.getAttribute("email");
//out.println("welcome "+email);
%>

<!-- Insert your image here -->
<img src="../images/15.jpg" alt="Description of the image">
<h1>admin file</h1>

</body>
</html>
