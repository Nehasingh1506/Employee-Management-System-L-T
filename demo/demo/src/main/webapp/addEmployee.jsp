<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Employee</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body class="bg-light">
<div class="container py-5">
<div class="card shadow-lg border-0 rounded-4">
<div class="card-header bg-primary text-white">
<h2><i class="bi bi-person-plus-fill"></i> Add Employee</h2>
</div>
<div class="card-body">
<form action="addEmployee" method="post">
<div class="row">
<div class="col-md-6 mb-3">
<label class="form-label">Full Name</label>
<input type="text" name="name" class="form-control" required>
</div>
<div class="col-md-6 mb-3">
<label class="form-label">Email</label>
<input type="email" name="email" class="form-control" required>
</div>
<div class="col-md-6 mb-3">
<label class="form-label">Phone</label>
<input type="text" name="phone" class="form-control" required>
</div>
<div class="col-md-6 mb-3">
<label class="form-label">Joining Date</label>
<input type="date" name="joiningDate" class="form-control" required>
</div>
<div class="col-md-6 mb-3">
<label class="form-label">Department</label>
<select name="department" class="form-select" required>
<option value="">Select Department</option>
<option>Information Technology</option>
<option>Human Resources</option>
<option>Finance</option>
<option>Marketing</option>
<option>Sales</option>
</select>
</div>
<div class="col-md-6 mb-3">
<label class="form-label">Designation</label>
<select name="designation" class="form-select" required>
<option value="">Select Designation</option>
<option>Intern</option>
<option>Trainee</option>
<option>Software Engineer</option>
<option>Senior Software Engineer</option>
<option>Manager</option>
</select>
</div>
<div class="col-md-6 mb-4">
<label class="form-label">Salary</label>
<div class="input-group">
<span class="input-group-text">₹</span>
<input type="number" step="0.01" name="salary" class="form-control" required>
</div>
</div>
</div>
<button class="btn btn-primary" type="submit">Save Employee</button>
<a href="index.jsp" class="btn btn-secondary">Back</a>
</form>
</div>
</div>
</div>
<script src="js/script.js"></script>
</body>
</html>