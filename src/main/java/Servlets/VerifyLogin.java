package Servlets;

import javax.servlet.annotation.WebServlet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "VerifyLogin", urlPatterns = "/VerifyLogin")
public class VerifyLogin {

public static boolean checkLogin(String email,String password){
	boolean status=false;
	Connection con=GetCon.getCon();
	try {
		PreparedStatement ps=con.prepareStatement("Select * from MAILCASTINGUSER where email = ? and password =?");
		
		ps.setString(1,email);
		ps.setString(2,password);
		ResultSet rs=ps.executeQuery();
		status=rs.next();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return status;
}

public static String getName(String email) {

	String uname = null;

	Connection con = GetCon.getCon();
	try {
		PreparedStatement ps = con.prepareStatement("Select name from MAILCASTINGUSER where email = ?");
		ps.setString(1,email);
		ResultSet rs = ps.executeQuery();
		while (rs.next())
		{
			uname = rs.getString("name");
		}

	} catch (SQLException e) {
		throw new RuntimeException(e);
	}
	return uname;
}
}
