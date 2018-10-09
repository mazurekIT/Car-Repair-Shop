package pl.coderslab.dao;

import pl.coderslab.DbUtil.DbUtil;
import pl.coderslab.classes.Vehicle;

import java.sql.*;
import java.util.ArrayList;

public class VehicleDao extends Vehicle {

    public VehicleDao(String brand, String model, int production_date, String plate_number, Date next_service_date, int customer_id) {
        super(brand, model, production_date, plate_number, next_service_date, customer_id);
    }

    public VehicleDao() {
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
                preparedStatement.setInt(3, this.getProduction_year());
                preparedStatement.setString(4, this.getPlate_number());
                preparedStatement.setDate(5, this.getNext_service_date());
                preparedStatement.setInt(6, this.getCustomer_id());
                preparedStatement.executeUpdate();
                ResultSet resultSet = preparedStatement.getGeneratedKeys();
                if (resultSet.next()) {
                    this.setId(resultSet.getInt(1));
                }
            } else {
                String sql = "update vehicles set brand=?, model=?, production_year=?, plate_number=?, next_service_date=?, customer_id=? where id=?";
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1, this.getBrand());
                preparedStatement.setString(2, this.getModel());
                preparedStatement.setInt(3, this.getProduction_year());
                preparedStatement.setString(4, this.getPlate_number());
                preparedStatement.setDate(5, this.getNext_service_date());
                preparedStatement.setInt(6, this.getCustomer_id());
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
                String sql = "delete from vehicles where id=?";
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setInt(1, this.getId());
                preparedStatement.executeUpdate();
                this.setId(0);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public static ArrayList<VehicleDao> loadAllVehicles() {
        try {
            Connection connection = DbUtil.getConn();
            ArrayList<VehicleDao> vehicleDaos = new ArrayList<>();
            String sql = "SELECT * FROM vehicles";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            getVehiclesDate(vehicleDaos, resultSet);
            return vehicleDaos;
        } catch (SQLException e) {
            System.out.println("Błąd load all");
        }
        return null;
    }


    private static void getVehiclesDate(ArrayList<VehicleDao> vehicleDaos, ResultSet resultSet) throws SQLException {
        while (resultSet.next()) {
            VehicleDao loadedVehicles = new VehicleDao();
            loadedVehicles.setId(resultSet.getInt("id"));
            loadedVehicles.setBrand(resultSet.getString("brand"));
            loadedVehicles.setModel(resultSet.getString("model"));
            loadedVehicles.setProduction_year(resultSet.getInt("production_year"));
            loadedVehicles.setPlate_number(resultSet.getString("plate_number"));
            loadedVehicles.setNext_service_date(resultSet.getDate("next_service_date"));
            loadedVehicles.setCustomer_id(resultSet.getInt("customer_id"));
            vehicleDaos.add(loadedVehicles);
        }
    }

}

