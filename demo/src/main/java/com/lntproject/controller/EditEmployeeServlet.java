package com.lntproject.controller;

import java.io.IOException;

import com.lntproject.dao.EmployeeDAO;
import com.lntproject.model.Employee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/editEmployee")
public class EditEmployeeServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        EmployeeDAO dao = new EmployeeDAO();

        Employee employee = dao.getEmployeeById(id);

        request.setAttribute("employee", employee);

        request.getRequestDispatcher("editEmployee.jsp")
               .forward(request, response);
    }
}