package serveletEXBO;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelEXBO.Contact;
import servicesEXBO.ContactServicesImpl;
import servicesEXBO.IContactServices;
import utilEXBO.CommonUtil;

/**
 * Servlet implementation class ContactInfo
 */
@WebServlet("/ContactInfo")
public class ContactInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/contact.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Contact contact = new Contact();
		IContactServices iContactServices = new ContactServicesImpl();
		String messageID = CommonUtil.generateMessageIDs(iContactServices.getMessageIDs());
		
		contact.setMessageID(messageID);
		contact.setName(request.getParameter("name"));
		contact.setEmail(request.getParameter("email"));
		contact.setMessage(request.getParameter("message"));
		
		iContactServices.addContact(contact);
		
		request.setAttribute("currentMessage", contact);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/viewMessage.jsp");
		dispatcher.forward(request, response);
	}

}
