

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 

 
 <!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Attendance</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
    }
    .container {
        max-width: 500px;
        margin: 80px auto;
        padding: 30px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        position:absolute;
        left:45%;
    }
    h1 {
        text-align: center;
        margin-bottom: 20px;
    }
    form {
        display: grid;
        gap: 10px;
       
       
    }
    label {
        font-weight: bold;
    }
    input[type="text"],
    input[type="email"],
    input[type="number"],
    textarea {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 3px;
    }
    input[type="submit"] {
        width: auto;
        padding: 8px 20px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }
</style>
</head>
<body>
<%@include file="EmployeeDashboard.jsp" %>
<div class="container">
    <h1>Mark your attendance</h1>
    <form class="formarea" name ="frm" action="Attendance" method="POST">
    
        <label for="empid">Employee ID: </label>
        <input type="text" id="empid" name="empid" placeholder=" Enter employee id" required>
        
        <!-- 
        <label for="Adate">Employee Join_Date:</label>
        <input type="date" id="Adate" name="attendance_date" placeholder=" Enter employee attendance date" required>
         -->
        
        <label for="inTime">Employee In Time:</label>
        <input type="time" id="inTime" name="inTime" placeholder=" Enter employee InTime" required>
        
        <label for="outTime">Employee Out Time:</label>
        <input type="time" id="outTime" name="outTime" placeholder=" Enter employee OutTime" required>
        
        <label for="status">Status</label>
        <input type="text" id="status" name="status" placeholder=" Enter yes/no" required>
      
        <input type="submit" value="Attendace">

    </form>
</div>
</body>
</html>
 