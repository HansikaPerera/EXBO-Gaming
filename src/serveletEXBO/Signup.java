package serveletEXBO;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelEXBO.info;
import servicesEXBO.GameService;
import servicesEXBO.Iservice;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Login.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		info Info = new info();
		
		Info.setUserId(request.getParameter("userID"));
		Info.setFirstName(request.getParameter("firstName"));
		Info.setLastName(request.getParameter("lastName"));
		Info.setGender(request.getParameter("gender"));
		Info.setPlatform(request.getParameter("platform"));
		Info.setUserName(request.getParameter("userName"));
		Info.setEmail(request.getParameter("email"));
		Info.setPassword(request.getParameter("password"));
		//Info.setType(request.getParameter("type"));
		
		Iservice iServices = new GameService();
		iServices.Signup(Info);
		
		String confirmString = "info entry suceeded!";
		request.setAttribute("confirmString", confirmString);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Login.jsp");
		dispatcher.forward(request, response);
		
	}

}
