<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->

<%@page import="com.medico.pojo.articledto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.medico.Connection.ConnectDb"%>
<html class="no-js">
<!--<![endif]-->


<!-- Mirrored from medico.modernwebtemplates.com/event-single-full.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Jun 2017 12:24:46 GMT -->
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
<%
                                        String pn = "article.jsp";
					HttpSession s1 = request.getSession(false);
					ArrayList<articledto> a=(ArrayList<articledto>)s1.getAttribute("list");
                                         if(s1 == null){
                                            HttpSession s = request.getSession(true);
                                            int ab = 0;
                                            String b = null;
                                            s.setAttribute("Patient_id", ab);
                                            s.setAttribute("Doctor_id", ab);
                                            s.setAttribute("type", b);
                                            System.out.print("i'm in new");
                                         
                           // System.out.print(session1.getAttribute("Patient_id") + "its me");
                                              }
                                         s1.setAttribute("pn",pn);
                           String type = null;
                           if(s1 != null){
                             type = (String)s1.getAttribute("type");
                           }
%>

	<!-- search modal -->
	
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
						<div class="col-lg-9 col-md-8 text-right">
				
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

			<section id="breadcrumbs" class="breadcrumbs_section cs section_padding_25 gradient table_section table_section_md">
				<div class="container">
					<div class="row">
						<div class="col-md-6 text-center text-md-left">
							<h1 class="thin">Articles</h1>
						</div>
						<div class="col-md-6 text-center text-md-right">
							<ol class="breadcrumb">
                                
								<li>
									<a href="article2servlet?type=Healthy Hairs">
										Healthy Hairs
									</a>
								</li>
								<li>
									<a href="article2servlet?type=Healthy Skin">Healthy Skin</a>
								</li>
                                <li class="active"><a href="article2servlet?type=Healthy Eating">Healthy Eating</a> </li>
                                <li class="active"><a href="article2servlet?type=Weight loss">Weight loss</a> </li>
							</ol>
						</div>
					</div>
				</div>
			</section>
			

			<section id="content" class="ls section_padding_top_100 section_padding_bottom_75">
				<div class="container">
					<div class="row">
					<%
					if(a == null){
                                             response.sendRedirect("articleservlet");
						%>
                                                
						Nothing to show............
						<%
					}
						else{
							
					for(articledto dto:a){
					%>

						<div class="col-sm-4 col-md-8 col-lg-4">

							<article class="event-single">
								<div class="entry-thumbnail">
									<img src="images/<%=dto.getImage()%>" alt="">
								</div>

								<div class="post-content">

									<h1 class="entry-title">
										<a href ="singlearticleservlet?title=<%=dto.getTitle()%>"><%=dto.getTitle() %></a>
									</h1>

									<header class="entry-header">
										<div class="entry-meta">

											<span class="author">
												<i class="rt-icon2-user2 highlight2"></i>
												by
												<p><%=dto.getDoctor_name() %></p>
											</span>

											<span class="date">
												<i class="rt-icon2-calendar5 highlight2"></i>
												<time datetime="2015-02-04T15:05:23+00:00" class="entry-date"><%=dto.getDate() %></time>
											</span>


										</div>
										<!-- .entry-meta -->
									</header>
									<!-- .entry-header -->

									<div class="entry-content">

										<p><%=dto.getDescription() %></p>

										

									</div>
									<!-- .entry-content -->

								</div>
								<!-- .post-content -->
							</article>
                            
                        </div>
                        <%
                        }
                        }%>
                              <div class ="col-lg-10  col-md-8 col-sm-4">
                            <p><b>Articles based on Health interests</b></p>
                            <div class ="col-lg-10  col-md-8 col-sm-4">
                             <a href="article2servlet?type=HealthyTeeth">Healthy Teeth</a>, <a href="article2servlet?type=Heart">Heart</a>,<a href="article2servlet?type=EatingEveryday">EatingEveryday</a>,<a href="article2servlet?type= Fitness"> Fitness</a> ,<a href="article2servlet?type=Acne">Acne</a>,<a href="article2servlet?type=Pregnancy">Pregnancy</a>,<a href="article2servlet?type=Diabetes">Diabetes</a>,<a href="article2servlet?type=Oralhygiene"> Oralhygiene</a>,  <a href="article2servlet?type=Stress">Stress</a> </div>
                        </div>
						<!--eof .col-sm-10 (main content)-->

						<!--eof .col-sm-10 (main content)-->

						<!--eof .col-sm-10 (main content)-->

						<!--eof .col-sm-10 (main content)-->

					</div>
				</div>
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
							<p>&copy;Copyright 2017</p>
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


<!-- Mirrored from medico.modernwebtemplates.com/event-single-full.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Jun 2017 12:24:46 GMT -->
</html>