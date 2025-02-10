<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="Nav.jsp"%>
</head>
<body>

<div class="container">
<div class="row offset-4">
<div class="col-4">
<form action="Admin"  method="post">
  <div class="mb-2">
      <label for="exampleInputEmail1" class="form-label">Email address</label>
      <input type="email" class="form-control" id="exampleInputEmail1" name="email">
  </div>
       <div class="mb-2">
      <label for="exampleInputPassword1" class="form-label">Password</label>
      <input type="password" class="form-control" id="exampleInputPassword1" name="pass">
   </div>
       <button type="submit" class="btn btn-primary  text-center">Submit</button>
 
      </form>
</div>
</div>
</div>
</body>
</html>