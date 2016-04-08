package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Customer;
import businessLogic.AdminManager;
import businessLogic.PreferenceManager;

/**
 * Servlet implementation class passwordChange
 */
@WebServlet({"/forgetPasswordVerify"})
public class ForgetPasswordVerify extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HttpSession session;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgetPasswordVerify() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "JSP/resetPassword2.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request,response);	
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		session=request.getSession(true);
		
	//	String userid=(String) session.getAttribute("userid");
	//	String userid = request.getParameter("userid");
	//	System.out.println(userid);
		
		PreferenceManager pmgr=new PreferenceManager();
		String path="Password.jsp";
		Customer customer = new Customer();
		String answer = request.getParameter("answer");
	
		String newPassword = request.getParameter("password");
		String name="";
		String userid = (String) session.getAttribute("userid");
		System.out.println("verify serlvet get attributes"+answer+newPassword);
		String ans  ;
		AdminManager mgr=new AdminManager();
		
			
			
			customer = pmgr.findCustomer(userid,name);
				if(customer!=null){
					System.out.println("customer in verify servlet !!!!!" +customer);
					customer.setPassword(newPassword);
					ans = customer.getAnswer();
				
					
					if(answer.equalsIgnoreCase(ans)){
						
							try {
								mgr.insertCustomer(customer);
							} catch (Exception e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
							path="MainPage.jsp";
							request.setAttribute("error", "Password changed successfully !");
												
					}
					else{						
							request.setAttribute("error", "Security answers does not match !");
						}	
				}
				else{
					System.out.println("customer null !!!!!!!!!!!!!!!!");
					request.setAttribute("error", "user id is not valid !");
				}
				
			
		request.getRequestDispatcher(path).forward(request, response);
	}
	
}
