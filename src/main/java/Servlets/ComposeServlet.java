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

@WebServlet(name = "ComposeServlet", urlPatterns = "/ComposeServlet")
public class ComposeServlet extends HttpServlet {

	
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {


		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession(false);
		
		
		String sender=(String)session.getAttribute("username");
		
		
		String reciever=request.getParameter("reciever_id");
		String msg=request.getParameter("message");
		int i= SendMessage.sendMsg(sender,reciever,msg);
		if(i>0){
			
	            
			out.print("Message Sucessfully Sent");
			RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
			rd.include(request, response);
		}
		else{
			out.print("Sorry,Message was not sent");
			RequestDispatcher rd=request.getRequestDispatcher("compose.jsp");
			rd.include(request, response);
		}
		
	}

}
