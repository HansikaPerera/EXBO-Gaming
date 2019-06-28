package servicesEXBO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connectionEXBO.DBConnection;
import modelEXBO.Game;

public class GameServicesImpl implements IGameServices {
	
	
	@Override
	public String getcode(String GameID) {
		// TODO Auto-generated method stub
		Game game1 = new Game();
		String ShowGameQuery = "SELECT code FROM gameurl WHERE GameID = ? ";
		
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(ShowGameQuery);
	
			ps.setString(1, GameID);
			
			ResultSet resultSet = ps.executeQuery();
			
			while (resultSet.next()) {
			game1.setGamecode( resultSet.getString(1) );
			}
			
		}
		catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return game1.getGamecode();
	}



	@Override
	public String loadGameName(String gameID) {
		// TODO Auto-generated method stub
		Game game1 = new Game();
		String ShowGameQuery = "SELECT gameName FROM game WHERE GameID = ? ";
		
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(ShowGameQuery);
	
			ps.setString(1, gameID);
			
			ResultSet resultSet = ps.executeQuery();
			
			while (resultSet.next()) {
			game1.setGameName( resultSet.getString(1) );
			}
			
		}
		catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return game1.getGameName();
	}


	@Override
	public void addGames(Game game) {
		// TODO Auto-generated method stub
		String addGameQuery = "INSERT INTO game VALUES(?,?,?,?)";
		String addGameURLQuery = "INSERT INTO gameurl VALUES(?,?)";		
			
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(addGameQuery);
			
			ps.setString(1, game.getGameID());
			ps.setString(2, game.getGameName());
			ps.setString(3, game.getCategory());
			ps.setString(4, game.getTag());
			
			ps.executeUpdate();
			
			
			ps = DBConnection.getDBconnection().prepareStatement(addGameURLQuery);
			
			ps.setString(1, game.getGameID());
			ps.setString(2, game.getGamecode());
			
			ps.executeUpdate();
			
		}
		catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			
	}
	
	
	@Override
	public void removeGames(Game game) {
		// TODO Auto-generated method stub
		String removeGameQuery = "DELETE from game WHERE  gameID = ? and gameName = ?";
		String removeGameURLQuery = "DELETE from gameurl WHERE  gameID = ?";
			
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(removeGameQuery);
			
			ps.setString(1, game.getGameID());
			ps.setString(2, game.getGameName());
			
			ps.executeUpdate();
			
			
			ps = DBConnection.getDBconnection().prepareStatement(removeGameURLQuery);
			
			ps.setString(1, game.getGameID());
			
			ps.executeUpdate();
			
			} 
		catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	
	@Override
	public void updateGames(Game game) {
		// TODO Auto-generated method stub
		String updateGameQuery = " UPDATE game SET gameName = ?, category = ?, tag = ? WHERE gameID = ?";	//writing Quarry to update game table		
		
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(updateGameQuery);	//connecting to database
			
			//Assign values to query
			ps.setString(1, game.getGameName());
			ps.setString(2, game.getCategory());
			ps.setString(3, game.getTag());
			ps.setString(4, game.getGameID());
			
			ps.executeUpdate();
		
		} 
		catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}


	@Override
	public ArrayList<String> getGameIDs() {
		// TODO Auto-generated method stub
		ArrayList<String> arrayList = new ArrayList<String>();
		String findIDQuery = "SELECT gameID FROM game";
		
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
	public ArrayList<Game> searchGame(String SearchGame) {
		// TODO Auto-generated method stub
		ArrayList<Game> arrayList = new ArrayList<Game>();
		String searchGameQuery = "SELECT * FROM game WHERE category LIKE ? OR gameName LIKE ? OR tag LIKE ? GROUP BY gameName";
		
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(searchGameQuery);
		
	
			ps.setString(1, "%"+SearchGame+"%");
			ps.setString(2, "%"+SearchGame+"%");
			ps.setString(3, "%"+SearchGame+"%");
			ps.setString(4, "%"+SearchGame+"%");
	
			ResultSet resultSet = ps.executeQuery();
	
			while(resultSet.next()){
				Game game = new Game();
				game.setGameID(resultSet.getString(1));
				game.setGameName(resultSet.getString(2));
				game.setCategory(resultSet.getString(3));
				game.setTag(resultSet.getString(4));
				
				arrayList.add(game);
			
			}
		}
		catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arrayList;
	}



	@Override
	public ArrayList<Game> listAllGames() {
		// TODO Auto-generated method stub
		ArrayList<Game> arrayList = new ArrayList<Game>();
		String listQuery = "SELECT * FROM game";
		
		try {
				PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(listQuery);

		
				ResultSet resultSet = ps.executeQuery();
		
				while(resultSet.next()){
					Game game = new Game();
					game.setGameID(resultSet.getString(1));
					game.setGameName(resultSet.getString(2));
					game.setCategory(resultSet.getString(3));
					
					arrayList.add(game);
			
				}
		}
		catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arrayList;
	}

}
