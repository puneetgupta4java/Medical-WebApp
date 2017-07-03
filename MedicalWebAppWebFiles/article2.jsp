<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<%@page import="com.medico.pojo.articledto"%>
<%@page import="java.util.ArrayList"%>
<html class="no-js">
<!--<![endif]-->


<!-- Mirrored from medico.modernwebtemplates.com/events-full.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Jun 2017 12:24:46 GMT -->
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
<%
                        HttpSession s1 = request.getSession(false);
			String pn = "article2.jsp";
                         if(s1 == null){
                                            int ab = 0;
                                            String b = null;
                                             HttpSession s = request.getSession(true);
                                            s.setAttribute("Patient_id", ab);
                                            s.setAttribute("Doctor_id", ab);
                                            s.setAttribute("type", b);
                         }
                         String type = null;
                         ArrayList<articledto> al=(ArrayList<articledto>)s1.getAttribute("list"); 
                         if(s1 != null){
                             s1.setAttribute("pn",pn);
                             type = (String)s1.getAttribute("type");
                          }
%>
	<div class="preloader">
		<div class="preloader_image"></div>
	</div>


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
							<div class="widget widget_search">
							
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
                                                                </ul>								</ul>
							</nav>

							<!-- eof main nav -->
						</div>
					</div>
				</div>
			</header>
			<%
					
					if(al == null){
                                             response.sendRedirect("articleservlet");
						%>
						nothing to show...........
						<%
					}
						else{
							
					
					%>
			

			<section id="breadcrumbs" class="breadcrumbs_section cs section_padding_25 gradient table_section table_section_md">
				<div class="container">
					<div class="row">
						<div class="col-md-6 text-center text-md-left">
							<h1 class="thin"><%=s1.getAttribute("art_type")%></h1>
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
									for(articledto dto:al){
							%>
						<div class="col-sm-6 col-md-6 col-lg-10 ">
							
							<article class="side-item event-item to_animate">
								<div class="row">
									<div class="col-md-5">
										<div class="item-media">
											<a href="event-single-full.html">
												<img src="images/<%=dto.getImage() %>" alt="">
											</a>
										</div>
									</div>
									
									<div class="col-md-7">
										<div class="item-content right">
											<h2>
												<a href="singlearticleservlet?title=<%=dto.getTitle()%>"><%=dto.getTitle() %></a>
											</h2>

											<p><%=dto.getDescription() %></p>

											<div class="entry-tags">
												<span class="event-date">
													<i class="rt-icon2-calendar5 highlight2"></i>

													<time datetime="2015-02-04T15:05:23+00:00"><%= dto.getDate() %></time>
												</span>

												<span class="event-place">
													<i class="rt-icon2-user2 highlight2"></i>
												by
												<a href="blog-right.html"><%=dto.getDoctor_name() %></a>
													
												</span>
											</div>

										</div>
									</div>

								</div>
							</article>

							
						</div>
						<%
						}
						}%>
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


<!-- Mirrored from medico.modernwebtemplates.com/events-full.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Jun 2017 12:24:46 GMT -->
</html>