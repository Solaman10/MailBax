<%@ page import="java.io.PrintWriter" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE HTML>


<html>
<head>
  <title>MailBax</title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta name="description" content="" />
  <meta name="keywords" content="" />
  <!--5grid--><script src="css/5grid/viewport.js"></script><!--[if lt IE 9]><script src="css/5grid/ie.js"></script><![endif]--><link rel="stylesheet" href="css/5grid/core.css" />
  <link rel="stylesheet" href="css/style.css" />
  <!--[if IE 9]><link rel="stylesheet" href="css/style-ie9.css" /><![endif]-->
</head>
<body>
<!-- ********************************************************* -->
<div id="header-wrapper">
  <div class="5grid">
    <div class="12u-first">

      <header id="header">
        <h1><a href="index.jsp">Mail services</a></h1>

      </header>

    </div>
  </div>
</div>

<div id="main">
  <div class="5grid">
    <div class="main-row">
      <div class="4u-first">

        <section>
          <h2>Welcome to <strong>MailBax!</strong></h2>
          <p>Hi! This is <strong>Mail Service</strong>, an free service. <br>
            You can perform mailing operations,Currently it stores the information in database
            it's free of cost.Let's give it a try..
          </p>

        </section>

      </div>
      <div class="4u">

        <section>

          <ul class="small-image-list">
            <li>
              <span>

                <h3 style="color:#007897;">Registration Form</h3><br>
                <div>
                <%
                PrintWriter ot = response.getWriter();
                if(request.getAttribute("registererror")!=null){
                String msg=(String)request.getAttribute("registererror");
                ot.print("<font style='color:red'>"+msg);
                ot.print("</font><br/>");
                }
                %>

                <form action="RegisterServlet" >
                <table style="table-layout: fixed;">
            <tr><td>EmailId        :</td><td> <input type="text" name="email"/><br/><br/></td></tr>
            <tr><td>Password       : </td><td><input type="password" name="password"/><br/><br/></td></tr>
            <tr><td>Name           : </td><td><input type="text" name="name"/><br/><br/></td></tr>
            <tr><td>Gender         :</td><td>Male<input type="radio" name="gender" value="male">Female<input type="radio" name="gender" value="female"/><br/><br/></td></tr>
            <tr><td>Contact Number :</td><td> <input type="text" name="mobile"/><br/><br/></td></tr>
            <tr><td>Country        : </td><td><input type="text" name="country"/><br/><br/></td></tr>
            <tr><td></td><td><input type="submit" value="Submit"/></td></tr>
        </table>
        </form>

                    </span>
            </li>



          </ul>
        </section>

      </div>

    </div>

  </div>
</div>
</body>

<div id="footer">

  <br>

</div>

<!-- ********************************************************* -->

</html>