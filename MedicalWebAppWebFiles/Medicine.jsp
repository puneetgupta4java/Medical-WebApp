 <%@page import="com.medico.pojo.medicinedto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.medico.Connection.ConnectDb"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
    <style type="text/css">
    #naincy{
        
        height: 510px;  
      width: 180px;
      border: 1px solid black;
        color: black;
        }
    p{
    padding:9%;
    }
    #mbtn{
    	background: transparent;
    	
    }
        </style>
<!--<![endif]-->


<!-- Mirrored from medico.modernwebtemplates.com/about.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Jun 2017 12:24:05 GMT -->
<head>
	<title>Medico</title>
	<meta charset="utf-8">
	<!--[if IE]>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<![endif]-->
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/main.css" id="color-switcher-link">
	<link rel="stylesheet" href="css/animations.css">
	<link rel="stylesheet" href="css/fonts.css">
	<link rel="stylesheet" href="layerslider/css/layerslider.css">
	<script src="js/vendor/modernizr-2.6.2.min.js"></script>

	<!--[if lt IE 9]>
		<script src="js/vendor/html5shiv.min.js"></script>
		<script src="js/vendor/respond.min.js"></script>
		<script src="js/vendor/jquery-1.12.4.min.js"></script>
	<![endif]-->

</head>

<body>
	<!--[if lt IE 9]>
		<div class="bg-danger text-center">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/" class="highlight">upgrade your browser</a> to improve your experience.</div>
	<![endif]-->

	<div class="preloader">
		<div class="preloader_image"></div>
	</div>
 <!-- search modal -->
	
<%
                            String pn = "Medicine.jsp";
                            HttpSession sessioncheck = request.getSession(false);
                          if(sessioncheck == null){
                            HttpSession session1 = request.getSession(true);
                            int ab = 0;
                            String b = null;
                            session1.setAttribute("Patient_id", ab);
                            session1.setAttribute("Doctor_id", ab);
                            session1.setAttribute("type", b);
                            System.out.print(pn);
                            session1.setAttribute("pn",pn);
                            response.sendRedirect("MedicineServlet");
                           // System.out.print(session1.getAttribute("Patient_id") + "its me");
                          }
                           String type = null;
                           if(sessioncheck != null){
                               sessioncheck.setAttribute("pn", pn);
                             type = (String)sessioncheck.getAttribute("type");
                           }
%>

	<!-- wrappers for visual page editor and boxed version of template -->
	<div id="canvas">
		<div id="box_wrapper">

			<!-- template sections -->

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
				
			</header>

			<section id="breadcrumbs" class="breadcrumbs_section cs section_padding_25 gradient table_section table_section_md">
				<div class="container">
					<div class="row">
						<div class="col-md-6  text-center text-md-left">
							<h1 class="thin">About Medicines</h1>
						</div>
						
						 
                        <div class="col-md-6  col-sm-3  text-center text-md-right">
                       
							
						
                         <form role="search" method="get"  class="form-inline" action="MedicineServlet">
									<div class="form-group">
										<input type="text"  name="search" class="form-control" placeholder="search medicines" style="height:55px ;">
										<button type="submit"  class=" btn btn-default " id="mbtn" style="height:55px ;"><b class = "glyphicon glyphicon-search"></b></button>
									</div>
								</form>
								</div>
   
					</div>
				</div>
			</section>
           

			
			
                         <%
                         HttpSession session1 = request.getSession(true);
                         ArrayList<medicinedto> a  = null;
                        		 a = (ArrayList<medicinedto>)session1.getAttribute("list");
                        		 if(a == null){
                        			 %>
                        			  <p>Search for medicines..............</p>
                        			 <%  
                        		 }
                        		 else{	 
                        	 
                         for(medicinedto m : a){
                           %>
                           <section id="about" class="ls section_padding_100 columns_padding_25">
				<div class="container">

					<div class="row">
                        <div class ="col-md-3 hidden-sm hidden-xs" id="naincy">
                            <p id="1"> <a href="#">Overview</a></p>
                            <p id="2"><a href="#">Description</a></p>
                           <p id="3"> <a href="#">Side effect</a></p>
                            <p id="4"><a href="#">Dosage</a></p>
                           <p id="5"><a href="#">avoid usage</a></p>
                            <p id="6"><a href="#">Preffered</a></p>
                            <p id="7"><a href="#">Disclaimer</a></p>
                        </div>
 
						<div class="col-md-9 col-sm-12">

							<h2 class="widget-title">Choose your Medicine</h2>

							<div class="panel-group" id="accordion">

								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
												Name
											</a>
										</h4>
									</div>
									
									<div id="collapse1" class="panel-collapse collapse in">
										<div class="panel-body">
											<div class="media">
												<div class="media-left">
												
													<a href="#">
														<img src="images/recent_post1.jpg" alt="">
													</a>
												</div>
												<div class="media-body">
                                                    
														<p><%=m.getName() %></p>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapse2" class="collapsed">
												Description
											</a>
										</h4>
									</div>
									<div id="collapse2" class="panel-collapse collapse">
										<div class="panel-body">
											<div class="media">
												<div class="media-left">
													<a href="#">
														<img src="images/recent_post2.jpg" alt="">
													</a>
												</div>
												<div class="media-body">
													<p><%=m.getDescription() %></p>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapse3" class="collapsed">
												Side-effects
											</a>
										</h4>
									</div>
									<div id="collapse3" class="panel-collapse collapse">
										<div class="panel-body">
											<div class="media">
												<div class="media-left">
													<a href="#">
														<img src="images/recent_post1.jpg" alt="">
													</a>
												</div>
												<div class="media-body">
													<p><%=m.getSide_effects() %></p>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapse4" class="collapsed">
												Dosage
											</a>
										</h4>
									</div>
									<div id="collapse4" class="panel-collapse collapse">
										<div class="panel-body">
											<div class="media">
												<div class="media-left">
													<a href="#">
														<img src="images/recent_post2.jpg" alt="">
													</a>
												</div>
												<div class="media-body">
													<p><%=m.getDosage() %></p>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapse5" class="collapsed">
												When not to use
											</a>
										</h4>
									</div>
									<div id="collapse5" class="panel-collapse collapse">
										<div class="panel-body">
											<div class="media">
												<div class="media-left">
													<a href="#">
														<img src="images/recent_post1.jpg" alt="">
													</a>
												</div>
												<div class="media-body">
													<p><%=m.getNot_use() %></p>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapse6" class="collapsed">
												Disclaimer
											</a>
										</h4>
									</div>
									<div id="collapse6" class="panel-collapse collapse">
										<div class="panel-body">
											<div class="media">
												<div class="media-left">
													<a href="#">
														<img src="images/recent_post1.jpg" alt="">
													</a>
												</div>
												<div class="media-body">
													<p><%=m.getDisclaimer() %></p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
                    </div>
                </div>
                <%
                }
                         }
                %>
                        </section>
			

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
		<!-- eof #box_wrapper -->
	</div>
	<!-- eof #canvas -->

	<script src="js/compressed.js"></script>
	<script src="js/main.js"></script>
	<script src="js/switcher.js"></script>

</body>


</html>