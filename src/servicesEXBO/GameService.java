package servicesEXBO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;

import connectionEXBO.DBConnection;
import modelEXBO.User;
import modelEXBO.info;

public class GameService implements Iservice {
	

	@Override
	public ArrayList<String> getUserIDs() {
		// TODO Auto-generated method stub
		ArrayList<String> arrayList = new ArrayList<String>();
		String findIDQuery = "SELECT userId FROM user_info";
		
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(findIDQuery);
			
			ResultSet resultSet = ps.executeQuery();
			
			while (resultSet.next()) {
				arrayList.add(resultSet.getString(1));
			
			}
			
		}
		catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arrayList;
	}

	@Override
	public void Signup(info Info) {
		// TODO Auto-generated method stub
		
		String SignupQuery = " insert into user_info SET userId = ?, firstName = ?, lastName = ?,  gender = ?,  platform = ?,  userName = ?, email = ?,  password = ?";
		try {
			
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(SignupQuery);
			
			ps.setString(1, Info.getUserId());
			ps.setString(2, Info.getFirstName());
			ps.setString(3, Info.getLastName());
			ps.setString(4, Info.getGender());
			ps.setString(5, Info.getPlatform());
			ps.setString(6, Info.getUserName());
			ps.setString(7, Info.getEmail());
			ps.setString(8, Info.getPassword());
			//ps.setString(9, Info.getType());
		
			ps.executeUpdate();
			
		//System.out.println("ps");
			
			
			
			
		
			
			
			} 
		catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public info Login(info Info) {
		
		
		String uID = null;
		
		String loginQuery1 = "SELECT * FROM user_info WHERE userName = ? AND password = ?";
		
		
				PreparedStatement ps;
				try {
					ps = DBConnection.getDBconnection().prepareStatement(loginQuery1);
			
			
					ps.setString(1, Info.getUserName());
					ps.setString(2, Info.getPassword());
					
			
					ResultSet resultSet = ps.executeQuery(); 
					
					if(resultSet.next()) {
						
						uID = resultSet.getString(1);
						
						Info.setUserId(uID);
						
						
						Info.setType(resultSet.getString("type"));
						
							
						Info.setValid(true);
							
						
						
					}
					
					else {
						Info.setValid(false);
					}
				
			
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
				return Info;

	}

	@Override
	public void deactivate(info Info) {
		// TODO Auto-generated method stub
		String deactivateQuery = "DELETE from user_info WHERE  email = ? and password = ?";
		String deactivateURLQuery = "DELETE from user_infourl WHERE  email = ?";
			
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(deactivateQuery);
			
			ps.setString(1, Info.getUserId());
			ps.setString(2, Info.getPassword());
			
			ps.executeUpdate();
			
			
			ps = DBConnection.getDBconnection().prepareStatement(deactivateURLQuery);
			
			ps.setString(1, Info.getUserId());
			
			ps.executeUpdate();
			
			} 
		catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	
	@Override
	public void update(info Info) {
		// TODO Auto-generated method stub
		
		String updateQuery = " UPDATE user_info SET  firstName = ?, lastName = ?,  gender = ?,  platform = ?,  userName = ?, email = ?,  password = ?  WHERE userId= ?";	//writing Quarry to update Info table		
		
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(updateQuery);	//connecting to database
			
			//Assign values to query
			
			ps.setString(1, Info.getFirstName());
			ps.setString(2, Info.getLastName());
			ps.setString(3, Info.getGender());
			ps.setString(4, Info.getPlatform());
			ps.setString(5, Info.getUserName());
			ps.setString(6, Info.getEmail());
			ps.setString(7, Info.getPassword());
			ps.setString(8, Info.getUserId());
			
			System.out.println(ps);
			
			ps.executeUpdate();
		
		} 
		catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	

	

	

	

	
}
