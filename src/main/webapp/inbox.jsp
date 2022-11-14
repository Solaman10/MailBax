<%@page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter" %>

<jsp:include page="header.jsp"></jsp:include>
<head>
</head>
<div id="main">
  <div class="5grid">
      <div class="4u-first">

      </div>
      <div class="4u">

        <%

          PrintWriter ot = response.getWriter();
          if(session.getAttribute("username")!=null){
            String username=(String)session.getAttribute("username");
            String uname=(String)session.getAttribute("uname");
            ot.print("<font style='color:navy'>Welcome "+uname+"</font>");
            if(request.getAttribute("delete")!=null){
              String delete=(String)session.getAttribute("username");
              ot.print("<font style='color:navy'>"+delete+"</font>");
            }
            try {
              Class.forName("com.mysql.cj.jdbc.Driver");
              Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/mailbax","root","Solaimani@4");
              PreparedStatement ps=con.prepareStatement("Select * from INBOX where RECEIVER=?");
              ps.setString(1,username);
              ResultSet rs=ps.executeQuery(); %>

        <div id='bottom'></div>
        <table> <!--border="4" cellspacing="4" cellpadding="5"-->

          <tr><td><strong><h3>To</h3></strong> </td><th><strong><h3>Message &emsp;</h3></strong></td><td><strong><h3>Date &emsp;</h3></strong></tr><br>

          <% while(rs.next()){
            int id=rs.getInt(1);
            System.out.print(id);%>
          <tr>
            <td><h3> <%= rs.getString(2) %> &emsp; &emsp; </h3></td>
            <td><h3> <%= rs.getString(4) %> &emsp; &emsp; </h3></td>
            <td><h3> <%= rs.getString(5) %> &emsp; &emsp; </h3></td>
            <% //ot.print("<td>" + rs.getString(4) + "</td>");
              //ot.print("<td>" DeleteServlet.Del`"</td>");%>

          </tr>

          <%}%>
        </table>
        <%} catch (SQLException e) {
              e.printStackTrace();
            }
          }

          else{
            request.setAttribute("Error1","Plz Do login First");
        %>
        <jsp:forward page="index.jsp"></jsp:forward>
        <%

          }
        %>

      </div>

  </div>

</div>

<jsp:include page="footer.html"></jsp:include>