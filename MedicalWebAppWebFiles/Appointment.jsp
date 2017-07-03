<%-- 
    Document   : Appiontment.jsp
    Created on : Jun 26, 2017, 10:38:52 PM
    Author     : puneet gupta
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.medico.Connection.ConnectDb"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medico</title>
	<meta charset="utf-8">
	<!--[if IE]>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<![endif]-->
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/animations.css">
	<link rel="stylesheet" href="css/fonts.css">
	<link rel="stylesheet" href="layerslider/css/layerslider.css">
	<script src="js/vendor/modernizr-2.6.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.1.1.min.js"></script>
        <title>Appointment Booking</title>
        <style type="text/css">
            
            
            *{
                text-align: center;
            }
            
        </style>
    </head>
    <body>
        <div class="preloader">
		<div class="preloader_image"></div>
	</div>


	
	<!-- wrappers for visual page editor and boxed version of template -->
	<div id="canvas">
		<div id="box_wrapper">
 <%
                            String pn = "Appointment.jsp";
                            HttpSession sessioncheck = request.getSession(false);
                          if(sessioncheck == null){
                            HttpSession session1 = request.getSession(true);
                            int ab = 0;
                            String b = null;
                            session1.setAttribute("Patient_id", ab);
                            session1.setAttribute("Doctor_id", ab);
                            session1.setAttribute("type", b);
                            session1.setAttribute("pn", pn);
                           // System.out.print(session1.getAttribute("Patient_id") + "its me");
                          }
                          
                            Connection con = ConnectDb.getConnection();
                            PreparedStatement psmt = con.prepareStatement("select type from doctor");
                            ResultSet rs = psmt.executeQuery();
                            //no duplicacy
                          // int patient_id = 0;
                          String type = null;
                           if(sessioncheck != null){
                             type = (String)sessioncheck.getAttribute("type");
                             sessioncheck.setAttribute("pn",pn);
                           }
                        %>
			<!-- template sections -->
			<section class="page_topline ls ms section_padding_0 table_section table_section_md">
				<div class="container">
					<div class="row">
						<div class="col-md-3 text-center text-md-left">
							<div class="page_social_icons">
								
								<a class="soc-google" href="#" title="Google">#</a>
								<a class="soc-linkedin" href="#" title="LinkedIn">#</a>
								
							</div>
						</div>

						<div class="col-md-9 text-center text-md-right">

							

							

							<span>
								<i class="rt-icon2-envelope highlight"></i> support@company.com
							</span>

						</div>

					</div>
				</div>
			</section>

			<header class="page_header header_white">
				<div class="container">
					<div class="row">
						<div class="col-lg-3 col-md-4 col-xs-12">
							<a href="index.jsp" class="logo top_logo">
								<img src="images/logo.png" alt=""> Medico
							</a>
							<!-- header toggler -->
							<span class="toggle_menu">
								<span></span>
							</span>
						</div>
						<div class="col-lg-9 col-md-8 text-right">
							<!-- main nav start -->
							<nav class="mainmenu_wrapper">
								<ul class="mainmenu nav sf-menu">
									<li class="active">
										<a href="index.jsp">Home</a>
								    </li>

                                    <li>
										<a href="Appointment.jsp">Appointment</a>
									</li>
                                    <li>
										<a href="articleservlet">Articles</a>
									</li>
                                    <li>
										<a href="MedicineServlet">About medicines</a>
									</li>
                                    
									                                  
									<li>
										<a href="contact.jsp">Contact</a>
										
									</li>
                                                                        <%
                                                                                if(type == null){
                                                                        %>
                                                                        <li>
										<a href="login.jsp">Login</a>
										
									</li>   
                                                                        
                                                                       
                                                                        <%
                                                                        }
                                                                            else{
                                                                        %>
                                                                           <li>
										<a href="Profile">my profile</a>
										
									</li>                                                                   
                                                                        <%
                                                                        }
                                                                        %>
								</ul>
							</nav>
							<!-- eof main nav -->
						</div>
					</div>
				</div>
			</header>

        <!-- form -->
        
        <h3>Book Appointments</h3>
                                                    <form action="SearchController" method="get">
                                                                    <div class="col-md-1"></div>
                                                                           <div class="form-group">
                                                                             <div class="col-md-4">
                                                                              <select class="form-control" name="type">
                                                                                 <%
                                                                                     HashSet hs = new HashSet();
                                                                                     while(rs.next()){
                                                                                         hs.add(rs.getString("type"));
                                                                                     }
                                                                                      Iterator itr = hs.iterator();
                                                                                            while(itr.hasNext())
                                                                                            {
                                                                                  %>
                                                                                     <option><%=itr.next()%></option>  
                                                                                  <%
                                                                                  }
                                                                                  %>
                                                                             </select>
                                                                             </div>
                                                                         <div class="form-group">

                                                                         <div class="col-md-3">
                                                                           <input class="form-control" type="text" placeholder="Location" name="Location" required="required">
                                                                         </div>
								    <div class="col-md-3">
								        <button type="submit" class="btn btn-sucess mybtn">Submit</button>
								    </div>
								</form>
                                                 <!-- form end -->
                                                 
                                                 <section class="page_copyright ls section_padding_50">
                                                        <div class="container">
                                                                <div class="row to_animate">
                                                                        <div class="col-sm-12 text-center">
                                                                                <a href="index.jsp" class="logo vertical_logo grey">
                                                                                        <img src="images/logo.png" alt="">
                                                                                        <br>Medico
                                                                                </a>
                                                                        </div>
                                                                        <div class="col-sm-12 text-center">
                                                                                <p>&copy;Copyright 2017
                                                                                </p>
                                                                        </div>
                                                                </div>
                                                        </div>
                                                </section>
                              </div>
                       </div>
         <script src="js/compressed.js"></script>
	<script src="js/main.js"></script>
	<script src="js/switcher.js"></script>                                                                    
    </body>
</html>
