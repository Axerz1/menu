package dao;

import bean.Dish;
import utils.C3p0Connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DishDao {
    public boolean addDish(Dish dish) {
    	//对数据库的操作
        String sql = "INSERT INTO dish (cook, dishname, type, price, description) VALUES (?,?,?,?,?)";
        try (Connection conn = C3p0Connection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, dish.getCook());
            pstmt.setString(2, dish.getDishname());
            pstmt.setString(3, dish.getType());
            pstmt.setDouble(4, dish.getPrice());
            pstmt.setString(5, dish.getDescription());
            int rows = pstmt.executeUpdate();
            return rows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Dish> getDishesByType(String type) {
        List<Dish> dishes = new ArrayList<>();
        String sql = "SELECT * FROM dish WHERE type = ?";
        try (Connection conn = C3p0Connection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, type);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Dish dish = new Dish();
                dish.setId(rs.getInt("id"));
                dish.setCook(rs.getString("cook"));
                dish.setDishname(rs.getString("dishname"));
                dish.setType(rs.getString("type"));
                dish.setPrice(rs.getDouble("price"));
                dish.setDescription(rs.getString("description"));
                dishes.add(dish);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return dishes;
    }
    
}
