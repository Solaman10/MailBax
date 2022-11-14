<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter" %>


<%
    PrintWriter ot = response.getWriter();
    String n=request.getParameter("val");
    ot.println("hi");
    if(n.length()>0){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mailbax","root","Solaimani@4");

            PreparedStatement ps=con.prepareStatement("delete  from INBOX where id = '"+n+"' ");

            ot.print("<br>");
            int s=ps.executeUpdate();
            ot.print("Mail has been successfully deleted");
            con.close();
        }catch(Exception e){e.printStackTrace();}
    }
%>
<jsp:forward page="inbox.jsp"></jsp:forward>