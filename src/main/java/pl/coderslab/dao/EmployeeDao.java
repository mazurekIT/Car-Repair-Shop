package pl.coderslab.dao;

import pl.coderslab.DbUtil.DbUtil;
import pl.coderslab.classes.Employee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EmployeeDao extends Employee {

    public EmployeeDao(String name, String lastname, String adress, long employee_phone, String note, int hourly) {
        super(name, lastname, adress, employee_phone, note, hourly);
    }
    public EmployeeDao(){

    }

    public void saveToDB() throws SQLException {
        try {
            Connection connection = DbUtil.getConn();
            if (this.getId() == 0) {
                String sql = "INSERT INTO employees (name,lastname,adress,employee_phone,note,hourly) values( ?, ?, ?, ?, ?, ?)";
                String generatedColumns[] = {"ID"};
                PreparedStatement preparedStatement = connection.prepareStatement(sql, generatedColumns);
                preparedStatement.setString(1,this.getName());
                preparedStatement.setString(2, this.getLastname());
                preparedStatement.setString(3, this.getAdress());
                preparedStatement.setLong(4, this.getEmployee_phone());
                preparedStatement.setString(5, this.getNote());
                preparedStatement.setInt(6, this.getHourly());
                preparedStatement.executeUpdate();
                ResultSet resultSet = preparedStatement.getGeneratedKeys();
                if (resultSet.next()) {
                    this.setId(resultSet.getInt(1));
                }
            } else {
                String sql = "update employees set name=?, lastname=?,adress=?, employee_phon=?, note=?,hourly=? where id=?";
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1,this.getName());
                preparedStatement.setString(2, this.getLastname());
                preparedStatement.setString(3, this.getAdress());
                preparedStatement.setLong(4, this.getEmployee_phone());
                preparedStatement.setString(5, this.getNote());
                preparedStatement.setInt(6, this.getHourly());
                preparedStatement.setInt(7, this.getId());
                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public void delete() throws SQLException {
        try {
            Connection connection = DbUtil.getConn();
            if (this.getId() != 0) {
                String sql = "delete from employees where id=?";
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setInt(1, this.getId());
                preparedStatement.executeUpdate();
                this.setId(0);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
