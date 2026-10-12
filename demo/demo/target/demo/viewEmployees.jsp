<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ page import="java.util.ArrayList,com.lntproject.model.Employee"%>
<%
ArrayList<Employee> employeeList=(ArrayList<Employee>)request.getAttribute("employeeList");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View Employees</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body class="bg-light">
<div class="container py-5">
<div class="card shadow">
<div class="card-header bg-primary text-white d-flex justify-content-between align-items-center">
<h2><i class="bi bi-people-fill"></i> Employee List</h2>
<a href="addEmployee.jsp" class="btn btn-light"><i class="bi bi-person-plus"></i> Add Employee</a>
</div>
<div class="card-body">
<table class="table table-bordered table-hover align-middle">
<thead class="table-dark">
<tr>
<th>ID</th><th>Name</th><th>Email</th><th>Phone</th><th>Department</th><th>Designation</th><th>Salary</th><th>Joining Date</th><th>Actions</th>
</tr>
</thead>
<tbody>
<% if(employeeList!=null){ for(Employee e:employeeList){ %>
<tr>
<td><%=e.getId()%></td>
<td><%=e.getName()%></td>
<td><%=e.getEmail()%></td>
<td><%=e.getPhone()%></td>
<td><%=e.getDepartment()%></td>
<td><%=e.getDesignation()%></td>
<td>₹<%=e.getSalary()%></td>
<td><%=e.getJoiningDate()%></td>
<td>
<a href="editEmployee?id=<%=e.getId()%>" class="btn btn-warning btn-sm"><i class="bi bi-pencil"></i></a>
<a href="deleteEmployee?id=<%=e.getId()%>" class="btn btn-danger btn-sm" onclick="return confirm('Delete this employee?')"><i class="bi bi-trash"></i></a>
</td>
</tr>
<% }} %>
</tbody>
</table>
<a href="index.jsp" class="btn btn-secondary">Back</a>
</div></div></div>
</body>
</html>