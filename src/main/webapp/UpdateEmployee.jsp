<!-- 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>
</head>
<body>

</body>
</html>
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="org.emp.service.*,java.util.*, org.emp.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.table {
  position: absolute;
 z-index: 2;
 left: 50%;
 top: 50%;
 transform: translate(-50%,-50%);
 width: 60%; 
 border-collapse: collapse;
 border-spacing: 0;
 box-shadow: 0 2px 15px rgba(64,64,64,.7);
 border-radius: 12px 12px 0 0;
 overflow: hidden;
  
}

.table th,
.table td {
  
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
  
}

.table th {
  background-color: #f2f2f2;
}

.table tbody tr:nth-child(even) {
  background-color: #f2f2f2;
}

.table tbody tr:hover {
  background-color: #ddd;
}

.table th:nth-child(1),
.table td:nth-child(1) {
  width: 10%;
}

.table th:nth-child(2),
.table td:nth-child(2) {
  width: 30%;
}

.table th:nth-child(3),
.table td:nth-child(3),
.table th:nth-child(4),
.table td:nth-child(4) {
  width: 20%;
  text-align: center;
}
</style>
</head>
<body>
<%!
EmpServ empS = new EmployeeServiceImpl();
%>
<%@include file="AdminDashboard.jsp" %>
  <div class="col py-3">
		 <div class="filter">

 </div>

 <table class="table">

  <thead>
   
    <tr>
      <th scope="col">Sr.No</th>
      <th scope="col">Employee Name</th>
      <th scope="col">Email</th>
      <th scope="col">Contact</th>
      <th scope="col">Address</th>
      <th scope="col">Salary</th>
      <th scope="col">Update</th>
      
    </tr>
  </thead>
  <tbody>
  <%
  List<EmloyeeModel> list=empS.getAllEmployees();
  int count=0;
  for(EmloyeeModel empRepo:list){
	 
	  %>
	   <tr>
      <th scope="row"><%=++count %></th>
      <td><%= empRepo.getName() %></td>
      <td><%= empRepo.getDepartment() %></td>
      <td><%= empRepo.getJoin_date() %></td>
      <td><%= empRepo.getPrimary_contact() %></td>
      <td><%= empRepo.getSecondary_contact() %></td>
       <td><%= empRepo.getEmail() %></td>
       <td><%= empRepo.getBirth_date() %></td>
        <td><%= empRepo.getGender() %></td>
         <td><%= empRepo.getAddress() %></td>
        <td><a href='Upd?empid=<%= empRepo.getId() %>&ename=<%= empRepo.getName()%>&edepartment<%= empRepo.getDepartment() %>&ejoindate<%= empRepo.getJoin_date() %>&eprimarymob<%= empRepo.getPrimary_contact() %>&esecondarymob<%= empRepo.getSecondary_contact() %>&eemail<%= empRepo.getEmail() %>&ebirthdate<%= empRepo.getBirth_date() %>&egender<%= empRepo.getGender() %>&eaddress=<%=empRepo.getAddress()%>'>UPDATE</a></td>
    </tr>
    
    
	  
	  <% 
  }
  %>
  </tbody>
</table>
		  
	  </div>
   </div>
</div>

</body>
</html>