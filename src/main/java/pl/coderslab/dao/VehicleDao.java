package pl.coderslab.dao;

import pl.coderslab.DbUtil.DbUtil;
import pl.coderslab.classes.Vehicle;

import java.sql.*;

public class VehicleDao extends Vehicle {

    public VehicleDao(String brand, String model, int production_date, String plate_number, Date next_service_date, int customer_id) {
        super(brand, model, production_date, plate_number, next_service_date, customer_id);
    }

    public void saveToDB() throws SQLException {
        try {
            Connection connection = DbUtil.getConn();
            if (this.getId() == 0) {
                String sql = "insert into vehicles (brand, model, production_year, plate_number, next_service_date, customer_id) values (?,?,?,?,?,?);";
                String generatedColumns[] = {"ID"};
                PreparedStatement preparedStatement = connection.prepareStatement(sql, generatedColumns);
                preparedStatement.setString(1, this.getBrand());
                preparedStatement.setString(2, this.getModel());
                preparedStatement.setInt(3,this.getProduction_date());
                preparedStatement.setString(4,this.getPlate_number());
                preparedStatement.setDate(5,this.getNext_service_date());
                preparedStatement.setInt(6,this.getCustomer_id());
                preparedStatement.executeUpdate();
                ResultSet resultSet = preparedStatement.getGeneratedKeys();
                if (resultSet.next()) {
                    this.setId(resultSet.getInt(1));
                }
            } else {
                String sql = "update vehicles set brand=?, model=?, production_year=?, plate_number=?, next_service_date=?, customer_id=?";
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1, this.getBrand());
                preparedStatement.setString(2, this.getModel());
                preparedStatement.setInt(3,this.getProduction_date());
                preparedStatement.setString(4,this.getPlate_number());
                preparedStatement.setDate(5,this.getNext_service_date());
                preparedStatement.setInt(6,this.getCustomer_id());
                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


}
