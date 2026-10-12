package com.lntproject.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.lntproject.model.Employee;
import com.lntproject.util.DBconnection;

public class EmployeeDAO {

    private Connection connection;

    public EmployeeDAO() {
        connection = DBconnection.getConnection();
    }

    public boolean addEmployee(Employee employee) {

        String sql = "INSERT INTO employees(name, email, phone, department, designation, salary, joining_date) VALUES (?, ?, ?, ?, ?, ?, ?)";

        try {

            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setString(1, employee.getName());
            ps.setString(2, employee.getEmail());
            ps.setString(3, employee.getPhone());
            ps.setString(4, employee.getDepartment());
            ps.setString(5, employee.getDesignation());
            ps.setDouble(6, employee.getSalary());
            ps.setDate(7, java.sql.Date.valueOf(employee.getJoiningDate()));

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    public ArrayList<Employee> getAllEmployees() {

        ArrayList<Employee> employeeList = new ArrayList<>();

        String sql = "SELECT * FROM employees";

        try {

            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Employee employee = new Employee();

                employee.setId(rs.getInt("id"));
                employee.setName(rs.getString("name"));
                employee.setEmail(rs.getString("email"));
                employee.setPhone(rs.getString("phone"));
                employee.setDepartment(rs.getString("department"));
                employee.setDesignation(rs.getString("designation"));
                employee.setSalary(rs.getDouble("salary"));
                employee.setJoiningDate(rs.getDate("joining_date").toString());

                employeeList.add(employee);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return employeeList;
    }
    public boolean deleteEmployee(int id) {

    String sql = "DELETE FROM employees WHERE id=?";

    try {

        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, id);

        return ps.executeUpdate() > 0;

    } catch (SQLException e) {
        e.printStackTrace();
    }

    return false;
}
    public Employee getEmployeeById(int id) {

    String sql = "SELECT * FROM employees WHERE id=?";

    try {

        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, id);

        ResultSet rs = ps.executeQuery();

        if (rs.next()) {

            Employee employee = new Employee();

            employee.setId(rs.getInt("id"));
            employee.setName(rs.getString("name"));
            employee.setEmail(rs.getString("email"));
            employee.setPhone(rs.getString("phone"));
            employee.setDepartment(rs.getString("department"));
            employee.setDesignation(rs.getString("designation"));
            employee.setSalary(rs.getDouble("salary"));
            employee.setJoiningDate(rs.getDate("joining_date").toString());

            return employee;
        }

    } catch (SQLException e) {
        e.printStackTrace();
    }

    return null;
}
    public boolean updateEmployee(Employee employee) {

    String sql = "UPDATE employees SET name=?, email=?, phone=?, department=?, designation=?, salary=?, joining_date=? WHERE id=?";

    try {

        PreparedStatement ps = connection.prepareStatement(sql);

        ps.setString(1, employee.getName());
        ps.setString(2, employee.getEmail());
        ps.setString(3, employee.getPhone());
        ps.setString(4, employee.getDepartment());
        ps.setString(5, employee.getDesignation());
        ps.setDouble(6, employee.getSalary());
        ps.setDate(7, java.sql.Date.valueOf(employee.getJoiningDate()));
        ps.setInt(8, employee.getId());

        return ps.executeUpdate() > 0;

    } catch (SQLException e) {
        e.printStackTrace();
    }

    return false;
}
    
}