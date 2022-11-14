package Servlets;

import javax.servlet.annotation.WebServlet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "RegisterUser", urlPatterns = "/RegisterUser")
public class RegisterUser {
static int status=0;
public static int register(String email,String password,String name,String gender,String mobile, String country){
	

	
	try {
		Connection con= GetCon.getCon();
		PreparedStatement ps;
		System.out.println(email +  password +  name +  gender +  mobile +  country);
		

		String ps1 = "Insert into MAILCASTINGUSER VALUES (?, ?, ?, ?, ?, ?, ?)";
		ps = con.prepareStatement(ps1);
		ps.setString(1,null);
		ps.setString(2,email);
		ps.setString(3,password);
		ps.setString(4,name);
		ps.setString(5,gender);
		ps.setInt(6,Integer.parseInt(mobile));
		ps.setString(7,country);
		
		status=ps.executeUpdate();

		
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return status;
	
}
}
