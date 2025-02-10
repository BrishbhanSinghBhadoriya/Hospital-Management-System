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
            background-image: url('../img/medical.png'); 
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
                        <form action="${pageContext.request.contextPath}/Admin/AdminMedicineUpdate" method="post">
                        
                        
                      <div class="col-12">
                       <label for="id" class="form-label"></label>
                      <div class="input-group">
                      <span class="input-group-text"><i class="fa-solid fa-id-badge"></i></span>
                     <input type="text" name="id" placeholder="Enter ID" required="required" class="form-control" id="id">
                    </div>
                      </div>
                            <h5 class="dark-text">Date of Prescription</h5>
                            <div class="input-group mb-3">
                                <span class="input-group-text"><i class="fas fa-calendar-alt"></i></span>
                                <input type="date" class="form-control" name="prescriptionDate">
                            </div>

                            <h5 class="dark-text">Patient Name</h5>
                            <div class="input-group mb-3">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                                <input type="text" class="form-control" name="patientName">
                            </div>

                            <h5 class="dark-text">Birthdate</h5>
                            <div class="input-group mb-3">
                                <span class="input-group-text"><i class="fas fa-calendar"></i></span>
                                <input type="date" class="form-control" name="birthdate">
                            </div>

                            <h5 class="dark-text">Medications</h5>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="list-group-item">
                                        <h5>1. Name of Medication</h5>
                                        <div class="input-group mb-2">
                                            <span class="input-group-text"><i class="fas fa-pills"></i></span>
                                            <input type="text" class="form-control" name="medication1" placeholder="Medication Name">
                                        </div>
                                        <h6>Dose</h6>
                                        <div class="input-group mb-2">
                                            <span class="input-group-text"><i class="fas fa-syringe"></i></span>
                                            <input type="text" class="form-control" name="dose1" placeholder="Dose">
                                        </div>
                                        <h6>Instructions</h6>
                                        <div class="input-group mb-2">
                                        <span class="input-group-text"><i class="fas fa-notes-medical"></i></span>
                                        <input type="text" class="form-control" name="instructions1">
                                        </div>
                                         <h6>Number of Days</h6>
                                        <div class="input-group mb-2">
                                        <span class="input-group-text"><i class="fas fa-clock"></i></span>
                                        <input type="number" class="form-control" name="days1">
                                         </div>
                                       
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="list-group-item">
                                        <h5>2. Name of Medication</h5>
                                        <div class="input-group mb-2">
                                            <span class="input-group-text"><i class="fas fa-pills"></i></span>
                                            <input type="text" class="form-control" name="medication2" placeholder="Medication Name">
                                        </div>
                                        <h6>Dose</h6>
                                        <div class="input-group mb-2">
                                            <span class="input-group-text"><i class="fas fa-syringe"></i></span>
                                            <input type="text" class="form-control" name="dose2" placeholder="Dose">
                                        </div>
                                                                                <h6>Instructions</h6>
                                        <div class="input-group mb-2">
                                        <span class="input-group-text"><i class="fas fa-notes-medical"></i></span>
                                        <input type="text" class="form-control" name="instructions2">
                                        </div>
                                         <h6>Number of Days</h6>
                                        <div class="input-group mb-2">
                                        <span class="input-group-text"><i class="fas fa-clock"></i></span>
                                        <input type="number" class="form-control" name="days2">
                                         </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-12">
                                <label for="doctorName" class="form-label"></label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-user-md"></i></span>
                                    <select class="form-control" id="doctorName" name="doctorName" required>
                                        <option value="" disabled selected>Select Doctor's Name</option>
                                        <option value="Dr. Rakesh Mahajan">Dr.Deepak Gupta</option>
                                        <option value="Dr. Hemant Sharma">Dr. Hemant Sharma</option>
                                        <option value="Dr. Suresh Joshi">Dr. Suresh Joshi</option>
                                        <option value="Dr. Rajesh Garg">Dr. Rajesh Garg</option>
                                        <option value="Dr. Ashwin Kumar">Dr. Ashwin Kumar</option>
                                        <option value="Dr. Himanshu Arora">Dr. Himanshu Arora</option>
                                        <option value="Dr. Puneet Agarwal">Dr. Puneet Agarwal</option>
                                        <option value="Dr. Vikram Ratore">Dr. Vikram Ratore</option>
                                        <option value="Dr. Ankur Singh">Dr. Ankur Singh</option>
                                        <option value="Dr. Arvind Kumar">Dr. Arvind Kumar</option>
                                        <option value="Dr. Shivam Gupta">Dr. Shivam Gupta</option>
                                        <option value="Dr. Rahul Mehta">Dr. Rahul Mehta</option>
                                    </select>
                                </div>
                            </div>
                            
                            <button type="submit" class="btn btn-success mt-3">Update</button>
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