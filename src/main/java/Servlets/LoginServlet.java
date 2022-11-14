package Servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", urlPatterns = "/LoginServlet")
public class LoginServlet extends HttpServlet {


	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String umail=request.getParameter("email");
		String uname=VerifyLogin.getName(umail);
		String password=request.getParameter("password");
		boolean status= VerifyLogin.checkLogin(umail,password);
		if(status==true){
			HttpSession session=request.getSession();
			session.setAttribute("username",umail);
			session.setAttribute("uname",uname);
			RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
			rd.include(request, response);
		}
		else{
			String Error="Please check your Email and Password";
			request.setAttribute("Error", Error);
			
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.include(request, response);
		}
		out.close();
	}
}
