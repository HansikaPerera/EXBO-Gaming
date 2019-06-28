package serveletEXBO;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelEXBO.payment;
import servicesEXBO.PaymentServiceslmpl;

/**
 * Servlet implementation class Addpayment
 */
@WebServlet("/Addpayment")
public class Addpayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addpayment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cnumber;
		String hname;
		String email;
		String date;
		String ccv;
		

		
		cnumber = request.getParameter("cnumber");
		hname = request.getParameter("hname");
		email = request.getParameter("Email");
		date = request.getParameter("Date");
		ccv = request.getParameter("ccv");
		
		
		payment p = new payment();
		
		p.setCreditNUmber( Integer.valueOf(cnumber) );
		p.setHname(hname);
		p.setGmail(email);
		p.setDate(date);
		p.setCcv(Integer.parseInt(ccv));
		
		PaymentServiceslmpl paymentDAO = null;
		try {
			paymentDAO = new PaymentServiceslmpl();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		paymentDAO.addPayment(p);
		
		javax.servlet.RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/addpay.jsp");
		dispatcher.forward(request, response);
		
	}
	}


