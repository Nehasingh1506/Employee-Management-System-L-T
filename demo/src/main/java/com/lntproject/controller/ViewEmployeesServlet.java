package com.lntproject.controller;

import java.io.IOException;
import java.util.ArrayList;

import com.lntproject.dao.EmployeeDAO;
import com.lntproject.model.Employee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/viewEmployees")
public class ViewEmployeesServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        EmployeeDAO dao = new EmployeeDAO();

        ArrayList<Employee> employeeList = dao.getAllEmployees();

        request.setAttribute("employeeList", employeeList);

        request.getRequestDispatcher("viewEmployees.jsp")
               .forward(request, response);
    }
}