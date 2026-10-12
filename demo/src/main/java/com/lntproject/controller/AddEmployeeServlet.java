package com.lntproject.controller;

import java.io.IOException;

import com.lntproject.dao.EmployeeDAO;
import com.lntproject.model.Employee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/addEmployee")
public class AddEmployeeServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        Employee employee = new Employee();

        employee.setName(request.getParameter("name"));
        employee.setEmail(request.getParameter("email"));
        employee.setPhone(request.getParameter("phone"));
        employee.setDepartment(request.getParameter("department"));
        employee.setDesignation(request.getParameter("designation"));
        employee.setSalary(Double.parseDouble(request.getParameter("salary")));
        employee.setJoiningDate(request.getParameter("joiningDate"));

        EmployeeDAO dao = new EmployeeDAO();

        if (dao.addEmployee(employee)) {
            response.sendRedirect("index.jsp?success=1");
        } else {
            response.sendRedirect("index.jsp?error=1");
        }
    }
}