<%@ page import="java.io.PrintWriter" %>
<jsp:include page="header.jsp"></jsp:include>
<div id="main">
  <div class="5grid">
    <div class="main-row">
      <div class="4u-first">
        <%
          String uname = (String) session.getAttribute("uname");
        %>

        <section>
          <h2>Welcome back <%=uname%>! </h2>
          <p>You have successfully reached into the <strong>MailBax!</strong><br>
            Now you can perform mailing operations you want.
          </p>

        </section>

      </div>
      <div class="4u">

        <section>

          <ul class="small-image-list">

            <li>
              <div>
                <%
                  PrintWriter ot = response.getWriter();
                  if(session.getAttribute("username")!=null){
                    String username=(String)session.getAttribute("username");
                  }
                  else{
                    request.setAttribute("Error1","Plz Do login First");
                %>
                <jsp:forward page="index.jsp"></jsp:forward>
                <%}
                %></div>

            </li>

          </ul>
        </section>

      </div>

    </div>
  </div>

</div>


<jsp:include page="footer.html"></jsp:include>