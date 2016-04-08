package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Customer;
import businessLogic.PreferenceManager;


@WebServlet({"/forgetPassword"})
public class ForgetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HttpSession session;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgetPassword() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "JSP/resetPassword1.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request,response);	
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		session=request.getSession(true);
		
	//	String nric=(String) session.getAttribute("nric");
		String userid = request.getParameter("userid");
		System.out.println(userid);
		String name="";
		PreferenceManager mgr=new PreferenceManager();
		String path="Password.jsp";
		Customer customer = new Customer();
			
		if(request.getParameter("userid")!= null)
		{
			
			System.out.println("user id is fine !!!!!!!!!!!!!!!!");
			customer = mgr.findCustomer(userid,name);			
			
			if(customer.getFirstName()!=null){				
					
				System.out.println("customer !!!!!" +customer);
				request.setAttribute("question", customer.getQuestion());				
				session.setAttribute("userid",customer.getUserid());				
				path="PasswordVerify.jsp";
				
			}
			else{
				System.out.println("customer null !!!!!!!!!!!!!!!!");
				request.setAttribute("error", "User id is not valid !");
			}
			
		}
		request.getRequestDispatcher(path).forward(request, response);
	}

}
