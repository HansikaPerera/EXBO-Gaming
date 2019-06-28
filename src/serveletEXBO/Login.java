package serveletEXBO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import modelEXBO.info;
import servicesEXBO.GameService;
import servicesEXBO.Iservice;



	@WebServlet("/login")
	public class Login extends HttpServlet {
		private static final long serialVersionUID = 1L;
	       
	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public Login() {
	        super();
	        // TODO Auto-generated constructor stub
	    }

		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			
		}

		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			
			info Info = new info();
			
			Info.setUserName(request.getParameter("userName"));
			Info.setPassword(request.getParameter("password"));
			
			
			Iservice iservice = new GameService();
			Info= iservice.Login(Info);
			
			
			
			if(Info.isValid()) {
				
				HttpSession session = request.getSession();   
				
		        System.out.println(Info.getType());
		        String type = Info.getType();
		        if(type.equals("admin")) {
		        	request.getSession(true).setAttribute("currentSessionUser", Info);
		        	request.getRequestDispatcher("index.jsp").forward(request, response);
		        }
		        if(type.equals("user")) {
		        	request.getSession(true).setAttribute("currentSessionUser",Info);
		        	request.getRequestDispatcher("index.jsp").forward(request, response);
		        }
		        
				
			
				
			}
			
			else {
				
				String errorString = "Invalid Username or Password";
				request.setAttribute("errorString", errorString);
				
				request.getRequestDispatcher("/Login.jsp").forward(request, response);
			}
			
			
			
			
		}

	}

