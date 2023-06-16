/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Connection;

import com.datastax.driver.core.BoundStatement;
import com.datastax.driver.core.PreparedStatement;
import com.datastax.driver.core.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.TypedQuery;


/**
 *
 * @author Trung
 */
public class Select {
    public static void main(String[] args) {
        try {
            JDBCConnection connection = new JDBCConnection();
            connection.getJDBCConnection("127.0.0.1", 9042);
            final String selectQuery = "select * from hotel.pois_by_hotel where hotel_id = ?";
            
            PreparedStatement psSelect = connection.getSession().prepare(selectQuery);
            BoundStatement bsSelect = psSelect.bind("DN");
            
            ResultSet rs = connection.getSession().execute(bsSelect);
           
            rs.forEach( rr ->{
                System.out.println("HotelID: " + rr.getString("hotel_id"));
                System.out.println("HotelName: " + rr.getString("poi_name"));
                System.out.println("HotelDesc: " + rr.getString("description"));
            });
                
            
            connection.close();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
      
    }
}
