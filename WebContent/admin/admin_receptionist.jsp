<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<%@include file="admin-nav.jsp" %>
<style>
    /* Set the background image in the top-left corner */
   body {
        background-image: url('../images/7.jpg'); /* Path to your image */
        background-position: center; /* Align image to top-left corner */
        background-repeat: no-repeat; /* Prevent the image from repeating */
        background-size: contain; /* Adjust the size as needed */
        background-attachment: fixed; /* Make the background fixed during scrolling */
    }
    
    /* Styling for responsiveness */
    img {
        max-width: 100%; /* Scales image to the width of its parent container */
        height: auto; /* Keeps the image's aspect ratio */
    }
</style>
</head>
<body>
<div class="container">
<div class="row offset-4">
<div class="col-4">
<form>
 <div class="mb-3">
    <label for="name" class="form-label">Name</label>
    <input type="text" class="form-control" id="name" placeholder="Full name.." name="name" required>
    </div>

  <div class="mb-3">
    <label for="email" class="form-label">Email address</label>
    <input type="email" class="form-control" id="email" placeholder="Email.." name="email" required>
    </div>
    
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="pass" placeholder="Password.." name="pass" required>
  </div>
  
  <div class="mb-3">
    <label for="phone" class="form-label">Phone</label>
    <input type="text" class="form-control" id="phone" placeholder="Phone" name="phone" required>
    </div>
    
    <div class="mb-3">
    <label for="qualification" class="form-label">Qualification</label>
    <input type="text" class="form-control" id="qualification" placeholder="Qualification" name= "qualification" required>
    </div>
  <div class="mb-3">
   <label for="experience" class="form-label">experience</label>
    <input type="text" class="form-control" id="experience" placeholder="Experience" name= "experience" required>
    </div>
    
     <div class="mb-3">
   <label for="home_address" class="form-label">Home_address</label>
    <input type="text" class="form-control" id="home_address" placeholder="Home_address" name= "home_address" required>
    </div>
 
 
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
</div>
</div>
</body>
</html>