<%@ page import="java.io.PrintWriter" %>
<jsp:include page="header.jsp"></jsp:include>
<div id="main">
  <div class="5grid">
    <div class="main-row">
      <div class="4u-first">

      </div>
      <div class="5u">

        <section>

          <ul class="small-image-list">

            <li>
              <div>
                <%
                  PrintWriter ot = response.getWriter();
                  if(session.getAttribute("username")!=null){
                    String username=(String)session.getAttribute("username");
                    String uname=(String)session.getAttribute("uname");
                    ot.print("<font style='color:navy'>Welcome "+uname+"</font>");
                  }
                  else{
                    request.setAttribute("Error1","Plz Do login First");
                %>
                <jsp:forward page="index.jsp"></jsp:forward>
                <%}
                %>
                <%
                  if(request.getAttribute("compose")!=null){
                    String compose= (String)request.getAttribute("compose");
                    ot.print("<font style='color:navy'>"+compose+"</font>");
                  }
                  if(request.getAttribute("composeerr")!=null){
                    String composeerr= (String)request.getAttribute("composeerr");
                    ot.print("<font style='color:navy'>"+composeerr+"</font>");
                  }
                %>


              </div>

            </li>

            <li>

              <h4>Compose Message</h4> <form action="ComposeServlet" >
              <table>
                <tr><td>To: <input type="text" name="reciever_id"/><br/></td></tr>
                <tr><td>Message:<br/></td></tr>
                <tr><td><textarea rows="10" cols="40" name="message"></textarea><br/></td></tr>
                <tr><td><input type="submit" value="Send"/></td></tr>

              </table></form>
            </li>

          </ul>
        </section>

      </div>

    </div>

  </div>
</div>

