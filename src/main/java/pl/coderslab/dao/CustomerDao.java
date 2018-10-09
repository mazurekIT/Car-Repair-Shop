package pl.coderslab.dao;

import pl.coderslab.DbUtil.DbUtil;
import pl.coderslab.classes.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Date;

public class CustomerDao extends Customer {

    public CustomerDao(String name, String surname, Date birthDate, long customer_phone) {

        super(name, surname, birthDate, customer_phone);
    }

    public CustomerDao() {

    }

    public void saveToDB() throws SQLException {

        try {
            Connection connection = DbUtil.getConn();
            if (this.getId() == 0) {
                String sql = "insert into customers(name, surname, birthdate, customer_phone) values(?, ?, ?, ?)";
                String generatedColumns[] = {"ID"};
                PreparedStatement preparedStatement = connection.prepareStatement(sql, generatedColumns);
                preparedStatement.setString(1, this.getName());
                preparedStatement.setString(2, this.getSurname());
                preparedStatement.setDate(3, this.getBirthDate());
                preparedStatement.setLong(4, this.getCustomerPhone());
                preparedStatement.executeUpdate();
                ResultSet resultSet = preparedStatement.getGeneratedKeys();
                if (resultSet.next()) {
                    this.setId(resultSet.getInt(1));
                }

            } else {
                String sql = "update customers set name=?, surname=?, birthdate=?, customer_phone=? where id=?";
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1, this.getName());
                preparedStatement.setString(2, this.getSurname());
                preparedStatement.setDate(3, this.getBirthDate());
                preparedStatement.setLong(4, this.getCustomerPhone());
                preparedStatement.executeUpdate();
            }

        } catch (SQLException e) {
            e.printStackTrace();

        }
    }

    public void delete() throws SQLException {

        try (Connection connection = DbUtil.getConn()) {
            if (this.getId() != 0) {
            }
            String sql = "DELETE FROM customers WHERE id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, this.getId());
            preparedStatement.executeUpdate();
            this.setId(0);

        } catch (SQLException e) {
            e.printStackTrace();

        }
    }

}
