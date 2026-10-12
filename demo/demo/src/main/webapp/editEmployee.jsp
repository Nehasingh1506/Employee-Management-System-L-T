<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ page import="com.lntproject.model.Employee"%>
<%
Employee employee=(Employee)request.getAttribute("employee");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit Employee</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body class="bg-light">
<div class="container py-5">
<div class="card shadow">
<div class="card-header bg-warning">
<h2><i class="bi bi-pencil-square"></i> Edit Employee</h2>
</div>
<div class="card-body">
<form action="updateEmployee" method="post">
<input type="hidden" name="id" value="<%=employee.getId()%>">
<div class="row">
<div class="col-md-6 mb-3"><label>Name</label><input class="form-control" name="name" value="<%=employee.getName()%>" required></div>
<div class="col-md-6 mb-3"><label>Email</label><input type="email" class="form-control" name="email" value="<%=employee.getEmail()%>" required></div>
<div class="col-md-6 mb-3"><label>Phone</label><input class="form-control" name="phone" value="<%=employee.getPhone()%>" required></div>
<div class="col-md-6 mb-3"><label>Department</label><input class="form-control" name="department" value="<%=employee.getDepartment()%>" required></div>
<div class="col-md-6 mb-3"><label>Designation</label><input class="form-control" name="designation" value="<%=employee.getDesignation()%>" required></div>
<div class="col-md-6 mb-3"><label>Salary</label><input type="number" step="0.01" class="form-control" name="salary" value="<%=employee.getSalary()%>" required></div>
<div class="col-md-6 mb-3"><label>Joining Date</label><input type="date" class="form-control" name="joiningDate" value="<%=employee.getJoiningDate()%>" required></div>
</div>
<button class="btn btn-warning">Update Employee</button>
<a href="viewEmployees" class="btn btn-secondary">Cancel</a>
</form>
</div></div></div>
</body>
</html>