package org.emp.Admin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.emp.model.AttendacneModel;
import org.emp.repository.AttendaceRepositoryImpl;

@WebServlet("/Attendance")
public class AttendanceController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        AttendaceRepositoryImpl repository = new AttendaceRepositoryImpl();
        int empid = 0; // Default value in case parsing fails

        String empidParam = request.getParameter("empid");
        if (empidParam != null && !empidParam.isEmpty()) {
            try {
                empid = Integer.parseInt(empidParam);
            } catch (NumberFormatException e) {
                // Handle the case where the empid parameter is not a valid integer
                System.err.println("Error parsing empid: " + e.getMessage());
                e.printStackTrace(); // log the error
            }
        } else {
            // Handle the case where the empid parameter is null or empty
            // For example, provide a default value or return an error response
            System.err.println("Empid parameter is null or empty.");
        }

        String Adate = request.getParameter("Attendace_date");
        String inTime = request.getParameter("inTime");
        String outTime = request.getParameter("outTime");
        String status = request.getParameter("status");

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date Attendace_date = null;
        try {
            Attendace_date = sdf.parse(Adate);
        } catch (Exception ex) {
            System.err.println("Error parsing date: " + ex.getMessage());
        }

        AttendacneModel attendaceModel = new AttendacneModel();

        attendaceModel.setEmpid(empid);
        attendaceModel.setAttendace_date((Date) Attendace_date);
        attendaceModel.setInTime(inTime);
        attendaceModel.setOutTime(outTime);
        attendaceModel.setStatus(status);
        boolean b = repository.addAtt(attendaceModel);
        if (b) {
            System.out.println("Attendance saved successfully.");
        } else {
            System.out.println("Failed to save attendance.");
        }

        request.setAttribute("attendaceModel", attendaceModel);
        RequestDispatcher dispatcher = request.getRequestDispatcher("AttendanceC.jsp");
        dispatcher.forward(request, response);

        System.out.println("Attendance processing completed for empid: " + empid);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}