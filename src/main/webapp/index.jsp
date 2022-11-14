<%@ page import="java.io.PrintWriter" %>
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
                <h1><a href="#">Mail services</a></h1>

            </header>

        </div>
    </div>
</div>

<div id="main">
    <div class="5grid">
        <div class="main-row">

            <div class="4u">

                <section>

                    <ul class="small-image-list">
                        <li>
                            <span>

									<h3 style="color:#007897;"> Login or Signup</h3><br>
									<div><%
									PrintWriter ot = response.getWriter();
									 if(request.getAttribute("Error")!=null){
									String Error=(String)request.getAttribute("Error");
									ot.print("<font style='color:red'>"+Error+"</font>");
									}

									if(request.getAttribute("Error1")!=null){
									System.out.print(request.getAttribute("Error1"));
									String Error1=(String)request.getAttribute("Error1");
									ot.print("<font style='color:red'>"+Error1+"</font>");


									}
									if(request.getAttribute("register")!=null){
									System.out.print(request.getAttribute("register"));
									String register=(String)request.getAttribute("register");
									ot.print("<font style='color:navy'>"+register+"</font>");
									}
									if(request.getAttribute("logout")!=null){
									System.out.print(request.getAttribute("logout"));
									String logout=(String)request.getAttribute("logout");
									ot.print("<font style='color:navy'>"+logout+"</font>");
									}
									 %>
								  <form action="LoginServlet" method="post">

					<table style="table-layout: fixed">

		    <tr><td>Email id</td><td> <input type="text" name="email"><br></td></tr>

			<tr><td>Password:</td><td> <input type="password" name="password"><br></td></tr>

			<tr><td></td><td><input type="submit" value="Sign in">&nbsp; &nbsp; &nbsp;  &nbsp;  &nbsp;  <a href="Register.jsp">Signup</a> </td>
		</tr>
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