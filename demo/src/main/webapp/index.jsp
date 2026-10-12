<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>HR Management System</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet"
          href="css/style.css">

</head>

<body>


<!-- =========================
     SIDEBAR
========================= -->

<div class="sidebar">

    <div class="sidebar-brand">

        <div class="brand-icon">
            <i class="bi bi-people-fill"></i>
        </div>

        <span>HR Manager</span>

    </div>


    <ul class="sidebar-menu">

        <li>

            <a href="index.jsp"
               class="active">

                <i class="bi bi-grid-fill"></i>

                <span>Dashboard</span>

            </a>

        </li>


        <li>

            <a href="viewEmployees">

                <i class="bi bi-people"></i>

                <span>Employees</span>

            </a>

        </li>


        <li>

            <a href="addEmployee.jsp">

                <i class="bi bi-person-plus"></i>

                <span>Add Employee</span>

            </a>

        </li>

    </ul>

</div>


<!-- =========================
     MAIN CONTENT
========================= -->

<div class="main-content">


    <!-- TOPBAR -->

    <div class="topbar">

        <h3 class="page-title">
            Dashboard
        </h3>


        <div class="admin-profile">

            <div>

                <strong>Administrator</strong>

                <div class="text-muted small">
                    HR Department
                </div>

            </div>


            <div class="admin-avatar">

                <i class="bi bi-person-fill"></i>

            </div>

        </div>

    </div>


    <!-- DASHBOARD -->

    <div class="dashboard">


        <!-- Welcome -->

        <div class="welcome-card">

            <h1>
                Welcome to HR Management
            </h1>

            <p>
                Manage employee information quickly and efficiently
                from one centralized dashboard.
            </p>

        </div>


        <!-- STATISTICS -->

        <div class="row g-4">


            <div class="col-md-4">

                <div class="stat-card">

                    <div class="stat-icon">

                        <i class="bi bi-people-fill"></i>

                    </div>

                    <h3>Employees</h3>

                    <p>
                        Manage employee records
                    </p>

                </div>

            </div>


            <div class="col-md-4">

                <div class="stat-card">

                    <div class="stat-icon">

                        <i class="bi bi-building"></i>

                    </div>

                    <h3>Departments</h3>

                    <p>
                        Organize your workforce
                    </p>

                </div>

            </div>


            <div class="col-md-4">

                <div class="stat-card">

                    <div class="stat-icon">

                        <i class="bi bi-database-check"></i>

                    </div>

                    <h3>Database</h3>

                    <p>
                        Employee records management
                    </p>

                </div>

            </div>


        </div>


        <!-- QUICK ACTIONS -->

        <div class="content-card">

            <h4>
                Quick Actions
            </h4>

            <p class="text-muted">
                Manage employees from the options below.
            </p>


            <div class="quick-actions">


                <a href="addEmployee.jsp"
                   class="action-btn action-success">

                    <i class="bi bi-person-plus me-2"></i>

                    Add Employee

                </a>


                <a href="viewEmployees"
                   class="action-btn action-primary">

                    <i class="bi bi-people me-2"></i>

                    View Employees

                </a>


            </div>

        </div>


    </div>

</div>


<script src="js/script.js"></script>

</body>

</html>