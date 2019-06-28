package servicesEXBO;

import java.util.ArrayList;

import modelEXBO.Game;

public interface IGameServices {
	
	public String  getcode(String GameID);
	public String loadGameName(String gameID) ;
	public void addGames(Game game);
	public void removeGames(Game game);
	public void updateGames(Game game);
	public ArrayList<String> getGameIDs();
	public ArrayList<Game> searchGame(String search);
	public ArrayList<Game> listAllGames();

}

