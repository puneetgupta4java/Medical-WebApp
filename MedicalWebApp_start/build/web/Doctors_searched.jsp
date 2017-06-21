<%-- 
    Document   : Doctors_searched
    Created on : Jun 17, 2017, 2:56:12 PM
    Author     : puneet gupta
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.medico.pojo.Doctor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->


<!-- Mirrored from medico.modernwebtemplates.com/events-full.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Jun 2017 12:24:46 GMT -->
<head>
	<title>Doctors</title>
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


	
	<!-- wrappers for visual page editor and boxed version of template -->
	<div id="canvas">
		<div id="box_wrapper">

			<!-- template sections -->

			<header class="page_header header_white">
				<div class="container">
					<div class="row">
						<div class="col-lg-3 col-md-4 col-xs-12">
							<a href="index-2.html" class="logo top_logo">
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
										<a href="blog-right.html">Appointment</a>
									</li>
                                    <li>
										<a href="blog-right.html">Articles</a>
									</li>
                                    <li>
										<a href="blog-right.html">About medicines</a>
									</li>
                                    
									<!-- blog -->
									<li>
										<a href="blog-right.html">Blog</a>
										
												
									</li>
									<!-- eof blog -->

                                   
									<li>
										<a href="contact.html">Contact</a>
										
									</li>
                                    <li>
										<a href="contact.html">Login</a>
										
									</li>
								</ul>
							</nav>

						</div>
					</div>
				</div>
			</header>

			<section id="breadcrumbs" class="breadcrumbs_section cs section_padding_25 gradient table_section table_section_md">
				<div class="container">
					<div class="row">
						<div class="col-md-6 text-center text-md-left">
							<h1 class="thin">Our Doctors</h1>
						</div>
						<div class="col-md-6 text-center text-md-right">
							
						</div>
					</div>
				</div>
			</section>

			<section id="content" class="ls section_padding_top_100 section_padding_bottom_75">
                            <%
                                HttpSession session1 = request.getSession(false);
                                ArrayList<Doctor> a = (ArrayList)session1.getAttribute("list");
                            %>
				<div class="container">
					<div class="row">

						<div class="col-sm-10 col-md-10 col-lg-8 col-sm-offset-1 col-md-offset-1 col-lg-offset-2">
                                                    <%
                                                        for(Doctor d : a){
                                                    %>
							<article class="side-item event-item to_animate">
								<div class="row">
									<div class="col-md-5">
										<div class="item-media">
											<a href="FetchDoctor?Doc_id=<%=d.getId()%>">
												<img src="images/<%=d.getImg()%>" alt="">
											</a>
										</div>
									</div>

									<div class="col-md-7">
										<div class="item-content right">
											<h2>
												<a href="FetchDoctor?Doc_id=<%=d.getId()%>"><%=d.getName()%></a>
											</h2>

                                                                                        <p>
                                                                                        <%=d.getDescr()%>    
                                                                                        </p>
                                                                                        <div class="entry-tags">
												<span class="event-date">
													<i class="rt-icon2-phone2 highlight2"></i>
                                                                                                        <%=d.getPhn()%>
													
												</span>

												<span class="event-place">
													<i class="rt-icon2-globe3 highlight2"></i>
													<%=d.getEmail()%>
												</span>
											</div>

										</div>
									</div>

								</div>
							</article>
                                                        <%
                                                        }
                                                        %>
							</div>
						<!--eof .col-sm-10 (main content)-->


					</div>
				</div>
			</section>


			
			
			<section class="page_copyright ls section_padding_50">
				<div class="container">
					<div class="row to_animate">
						<div class="col-sm-12 text-center">
							<a href="index-2.html" class="logo vertical_logo grey">
								<img src="images/logo.png" alt="">
								<br>Medico
							</a>
						</div>
						<div class="col-sm-12 text-center">
							<p>Copyright 2016. Medico by
								<a href="http://modernwebtemplates.com/">MWTemplates</a>
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


<!-- Mirrored from medico.modernwebtemplates.com/events-full.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Jun 2017 12:24:46 GMT -->
</html>