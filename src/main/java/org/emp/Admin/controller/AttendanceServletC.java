//package org.emp.Admin.controller;
//
//import java.io.*;
//import java.sql.*;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.emp.service.AttendanceService;
//@WebServlet("/submitAttendance")
//public class AttendanceServletC<AttendanceRepositoryC> extends HttpServlet {
//	private AttendanceService attendanceService;
//	
//	@Override
//    public void init() {
//        try {
//            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_database", "username", "password");
//            AttendanceRepositoryC attendanceRepository = new AttendanceRepositoryImpl(connection);
//            attendanceService = new AttendanceServiceImpl(attendanceRepository);
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        int empId = Integer.parseInt(request.getParameter("empId"));
//        Date Adate = Date.valueOf(request.getParameter("Adate"));
//        Time inTime = Time.valueOf(request.getParameter("inTime"));
//        Time outTime = Time.valueOf(request.getParameter("outTime"));
//        String status = request.getParameter("status");
//
//        Attendance attendance = new Attendance(empId, Adate, inTime, outTime, status);
//        attendanceService.saveAttendance(attendance);
//
//        response.sendRedirect("success.jsp");
//    }
//
//}
////
////	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
////		// TODO Auto-generated method stub
////		response.getWriter().append("Served at: ").append(request.getContextPath());
////	}
////	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
////		// TODO Auto-generated method stub
////		doGet(request, response);
////	}
////
////}

//__________________________________________________________________________________________________________________________________

//package org.emp.Admin.controller;
//
//import java.io.*;
//import java.sql.*;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.emp.model.Attendance;
//import org.emp.service.AttendanceCService;
//import org.emp.service.AttendanceService;
//import org.emp.service.AttendanceServiceCImpl;
//import org.emp.repository.AttendanceRepositoryCImpl;
//
//@WebServlet("/submitAttendance")
//public class AttendanceServletC extends HttpServlet {
//    private AttendanceCService attendanceService;
//    
//    @Override
//    public void init() {
//        try {
//            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspp", "root", "sa1234");
//            AttendanceRepositoryCImpl attendanceRepository = new AttendanceRepositoryCImpl(connection);
//            attendanceService = new AttendanceServiceCImpl(attendanceRepository);
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        int empId = Integer.parseInt(request.getParameter("empId"));
//        Date Adate = Date.valueOf(request.getParameter("Adate"));
//        Time inTime = Time.valueOf(request.getParameter("inTime"));
//        Time outTime = Time.valueOf(request.getParameter("outTime"));
//        String status = request.getParameter("status");
//
//        Attendance attendance = new Attendance(empId, Adate, inTime, outTime, status);
//        attendanceService.saveAttendance(attendance);
//
//        response.sendRedirect("success.jsp");
//    }
//}

//_________________________________________________________________________________________________________________________

package org.emp.Admin.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Date;
import java.sql.Time;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.emp.model.Attendance;
import org.emp.service.AttendanceCService;
import org.emp.service.AttendanceServiceCImpl;
import org.emp.repository.AttendanceRepositoryCImpl;

@WebServlet("/submitAttendance")
public class AttendanceServletC extends HttpServlet {
    private AttendanceCService attendanceService;

        @Override
        public void init() throws ServletException {
            try {
                // Initialize database connection (if needed)
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspp", "root", "sa1234");
                
                // Create an instance of AttendanceRepositoryCImpl (if needed)
                AttendanceRepositoryCImpl attendanceRepositoryCImpl = new AttendanceRepositoryCImpl(connection);
                
                // Create an instance of AttendanceServiceCImpl and pass the repository
                attendanceService = new AttendanceServiceCImpl(attendanceRepositoryCImpl);
            } catch (SQLException e) {
                // Handle database connection error
                e.printStackTrace();
                throw new ServletException("Error initializing AttendanceServletC", e);               
            }
        }	
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int empId = Integer.parseInt(request.getParameter("empId"));
            Date Adate = Date.valueOf(request.getParameter("Adate"));
            String inTimeString = request.getParameter("inTime");
            String outTimeString = request.getParameter("outTime");
            String status = request.getParameter("status");

            SimpleDateFormat formatter = new SimpleDateFormat("HH:mm:ss");
            Time inTime = new Time(formatter.parse(inTimeString).getTime());
            Time outTime = new Time(formatter.parse(outTimeString).getTime());

            
//            System.out.println("Input Time (inTime): " + inTimeString);
//            System.out.println("Input Time (outTime): " + outTimeString);


            // Validate time format
            if (!isValidTimeFormat(inTimeString) || !isValidTimeFormat(outTimeString)) {
                // Handle invalid time format by sending an error response
                response.setStatus(HttpServletResponse.SC_BAD_REQUEST); // Set HTTP status code 400 (Bad Request)
                response.getWriter().write("Invalid time format. Time should be in HH:MM:SS format."); // Write error message to response
                return;
            }

            // Parse the time strings into java.sql.Time objects
//            Time inTime = Time.valueOf(inTimeString);
//            Time outTime = Time.valueOf(outTimeString);

            // Process the attendance data (save it to database, etc.)
            Attendance attendance = new Attendance(empId, Adate, inTime, outTime, status);
            attendanceService.saveAttendance(attendance);

//            response.setStatus(HttpServletResponse.SC_OK); // Set HTTP status code 200 (OK)
            response.getWriter().write("Attendance saved successfully."); // Write success message to response
        } catch (NumberFormatException e) {
//            response.setStatus(HttpServletResponse.SC_BAD_REQUEST); // Set HTTP status code 400 (Bad Request)
            response.getWriter().write("Invalid employee ID."); // Write error message to response
        } catch (IllegalArgumentException e) {
//            response.setStatus(HttpServletResponse.SC_BAD_REQUEST); // Set HTTP status code 400 (Bad Request)
            response.getWriter().write("Invalid date format. Date should be in yyyy-MM-dd format."); // Write error message to response
        } 
        catch (Exception e) {
//            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR); // Set HTTP status code 500 (Internal Server Error)
            response.getWriter().write("An error occurred while processing the request."); //Write error message to response
            response.getWriter().write("Error is"+e);
            e.printStackTrace(); // Print stack trace for debugging
        }
    }

    // Method to validate time format (HH:MM:SS)
    private boolean isValidTimeFormat(String timeString) {
        String regex = "^([0-1]?[0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]$";
        return timeString.matches(regex);
    }
    
}


