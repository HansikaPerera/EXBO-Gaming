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
import servicesEXBO.GameServicesImpl;

/**
 * Servlet implementation class UpdateGame
 */
@WebServlet("/UpdateGame")
public class UpdateGame extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateGame() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/updateGames.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Game game = new Game();
		
		game.setGameID(request.getParameter("gameID"));
		game.setGameName(request.getParameter("gameName"));
		game.setTag(request.getParameter("gametag"));
		game.setCategory(request.getParameter("gameCategory"));
		
		IGameServices iGameServices = new GameServicesImpl();
		iGameServices.updateGames(game);
		
		String confirmString = "Game updated!";
		request.setAttribute("confirmString", confirmString);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/updateGames.jsp");
		dispatcher.forward(request, response);
	}

}
