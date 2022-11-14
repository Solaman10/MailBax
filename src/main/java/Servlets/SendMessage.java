package Servlets;

import javax.servlet.annotation.WebServlet;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Calendar;

@WebServlet(name = "SendMessage", urlPatterns = "/SendMessage")
public class SendMessage {
static int status=0;
static int d=1;
public static int sendMsg(String sender,String reciever,String msg ){
	Connection con=GetCon.getCon();
	java.util.Date sqdate=Calendar.getInstance().getTime();
	Date dat =new Date(sqdate.getTime());
	try {
		PreparedStatement ps=con.prepareStatement("Insert into INBOX values(?,?,?,?,?)");
		ps.setString(3,sender);
		ps.setString(2,reciever);
		ps.setString(4,msg);
		ps.setDate(5,dat);
		ps.setInt(1,d);
		PreparedStatement ps1=con.prepareStatement("Insert into SENTBOX values(?,?,?,?,?)");
		ps1.setString(3,sender);
		ps1.setString(2,reciever);
		ps1.setString(4,msg);
		ps1.setDate(5,dat);
		ps1.setInt(1,d);
		d++;
		status=ps.executeUpdate();
		ps1.executeUpdate();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return status;
}
}
