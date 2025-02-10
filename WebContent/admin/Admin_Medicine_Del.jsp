<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medicine Prescription</title>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <%@include file = "admin-nav.jsp" %>
    <style>
        body {
            background-image: url('../img/medical.png')cover; 
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            background-repeat: no-repeat;
        }
        .login-container {
            background: rgba(255, 255, 255, 0.8);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            margin-top: 80px;
            border: 2px solid #343a40;
        }
        .login-container img {
            width: 100px;
            margin-bottom: 10px;
        }
        .card {
            margin: 20px;
        }
        .form-header {
            font-size: 24px;
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
        .dark-text {
            color: #343a40;
        }
        
         .btn-custom {
             background: linear-gradient(135deg, #6a11cb, #2575fc);
            color: #fff;
            border-radius: 25px;
            }
        .admin-section {
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="login-container text-center">
                    <div class="logo">
                        <img src="../img/medi.jpg" alt="Doctor Logo" style="width: 100px; height: 100px;">
                    </div>
                    <h2 class="form-header">Admin Medicine</h2>

                    <div class="card-body">
                        <form action="${pageContext.request.contextPath}/Admin/AdminMedicineDel" method="post">
                        
                        
                      <div class="col-12">
                       <label for="id" class="form-label"></label>
                      <div class="input-group">
                      <span class="input-group-text"><i class="fa-solid fa-id-badge"></i></span>
                     <input type="text" name="id" placeholder="Enter ID" required="required" class="form-control" id="id">
                    </div>
                      </div>
                            
                      <button type="submit" class="btn btn-success mt-3">Delete</button>
                      <button type="reset" class="btn btn-danger mt-3">Clear Form</button>
                        </form>
         
                 <div class="mt-3">
                    <a href="Admin_Medicine.jsp" class="btn btn-custom btn-block">Add Data</a>
                </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>