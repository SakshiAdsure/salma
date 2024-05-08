<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Attendance</title>
    <link rel="stylesheet" href="CSS/attendance.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container-fluid">

        <nav class="navbar navbar-expand-lg navbar-light navbar-right">
            <a class="navbar-brand" href="#">EmployeeManagement</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
              <div class="navbar-nav">
                <a class="nav-item nav-link active" href="#">Home <span class="sr-only"></span></a>
                <a class="nav-item nav-link" href="#">Features</a>
                <a class="nav-item nav-link" href="#">Pricing</a>
                <a class="nav-item nav-link disabled" href="#">Disabled</a>
              </div>
            </div>
          </nav>

          <h2 class="heading">Mark your Attendance</h2>

        <div class="col-md-6 col-sm-12 left-container">
            <img src="img/attendance.png" alt="">

        </div>

        <div class="col-md-6 col-sm-12 right-container">
            
            <form>
                <div class="form-group">
                  <label for="exampleInputEmail1">Name</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter your name">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Date</label>
                    <input type="date" class="form-control" id="exampleInputEmail1" placeholder="Enter today's date">
                  </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Attendance</label>
                  <input type="text" class="form-control" id="exampleInputPassword1" placeholder="yes/no">
                </div>
                <div class="form-group form-check">
                  <input type="checkbox" class="form-check-input" id="exampleCheck1">
                  <label class="form-check-label" for="exampleCheck1">Check attendance is marked or not</label>
                </div>
                <button type="submit" class="btn">Submit</button>
              </form>

        </div>


    </div>

    <script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>