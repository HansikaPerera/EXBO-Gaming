package servicesEXBO;
import connectionEXBO.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelEXBO.*;


public class PaymentServiceslmpl implements Ipayment {
	private Connection conn;

	public PaymentServiceslmpl() throws ClassNotFoundException, SQLException {
		conn = DBConnection.getDBconnection();	
				}
	
	public void addPayment(payment pay){
		 try {
	        	String sql = "INSERT INTO pay(id, cardnumber,hname,email,exdate,ccv)" +
	    		" VALUES (null, ?, ?, ?, ?, ? )";
	            PreparedStatement ps = conn.prepareStatement(sql);
	            
	         
	            ps.setInt(1, pay.getCreditNUmber());
	            ps.setString(2,pay.getHname());
	            ps.setString(3,pay.getGmail());
	            ps.setString(4,pay.getDate());
	            ps.setInt(5,pay.getCcv());
	            boolean status = ps.execute();
	            System.out.println("data added successfully");

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
		
		
	}

	@Override
	public void viewPayment(payment pay) {
		// TODO Auto-generated method stub
		
	}
	
	
}
