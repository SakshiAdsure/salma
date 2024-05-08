<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Attendance Form</title>
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
        
       max-width: 500px;
       
        padding: 50px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        position:absolute;
        left:40%;
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
        width: 100px;
        padding: 8px 20px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 3px;
        cursor: pointer;
        left:45px;
    }
</style>
    
</head>
<body>
<h1>Employee Attendance</h1>
<!-- 
    <form action="submitAttendance" method="post">
        Employee ID: <input type="text" name="empId"><br>
        Attendance Date: <input type="date" name="Adate"><br>
        In Time: <input type="time" name="inTime"><br>
        Out Time: <input type="time" name="outTime"><br>
        Status: <input type="text" name="status"><br>
        <input type="submit" value="Submit">
    </form>
     -->
    
    <form action="Attendance" method="post">
    <label for="empId">Employee ID:</label>
    <input type="text" id="empId" name="empId" required><br><br>

    <label for="Adate">Date:</label>
    <input type="date" id="Adate" name="Adate" required><br><br>

    <label for="inTime">In Time (HH:MM:SS):</label>
    <input type="text" id="inTime" name="inTime" pattern="([01]?[0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]" required><br><br>

    <label for="outTime">Out Time (HH:MM:SS):</label>
    <input type="text" id="outTime" name="outTime" pattern="([01]?[0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]" required><br><br>

    <label for="status">Status:</label>
    <input type="text" id="status" name="status" required><br><br>

    <input type="submit" value="Submit">
</form>
    
</body>
</html>
