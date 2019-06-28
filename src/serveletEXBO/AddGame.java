package serveletEXBO;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelEXBO.Game;
import servicesEXBO.IGameServices;
import utilEXBO.CommonUtil;
import servicesEXBO.GameServicesImpl;

/**
 * Servlet implementation class AddGame
 */
@WebServlet("/AddGame")
public class AddGame extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddGame() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/addGames.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Game game = new Game();
		IGameServices iGameServices = new GameServicesImpl();
		String gameID = CommonUtil.generateGameIDs(iGameServices.getGameIDs());
		
		game.setGameID(gameID);
		game.setGameName(request.getParameter("gameName"));
		game.setCategory(request.getParameter("category"));
		game.setTag(request.getParameter("tag"));
		game.setGamecode(request.getParameter("codeTag"));
		
		iGameServices.addGames(game);
		
		String confirmString = "Game added!";
		request.setAttribute("confirmString", confirmString);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/addGames.jsp");
		dispatcher.forward(request, response);
	}

}
