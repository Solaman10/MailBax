package Servlets;

import javax.servlet.annotation.WebServlet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
@WebServlet(name = "GetCon", urlPatterns = "/GetCon")
public class GetCon {
private GetCon(){}

public static Connection con;
static{
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mailbax","root","Solaimani@4");
	} catch (ClassNotFoundException e) {
	
		e.printStackTrace();
		
	} catch (SQLException e) {
	
		System.out.println("Exception in GetCon");
	}
	
}
public static Connection getCon(){
	return con;
}
}
