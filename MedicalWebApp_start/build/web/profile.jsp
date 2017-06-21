<%-- 
    Document   : profile
    Created on : Jun 21, 2017, 1:30:26 PM
    Author     : puneet gupta
--%>

<%@page import="com.medico.pojo.Doctor"%>
<%@page import="com.medico.pojo.Patient"%>
<%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession session1 = request.getSession(false);
    String type = (String)session1.getAttribute("type");
    if(type == null){
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->


<!-- Mirrored from medico.modernwebtemplates.com/team-single2.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Jun 2017 12:24:07 GMT -->
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
	<div class="modal" tabindex="-1" role="dialog" aria-labelledby="search_modal" id="search_modal">
		<div class="widget widget_search">
			<form method="get" class="searchform form-inline" action="http://medico.modernwebtemplates.com/">
				<div class="form-group">
					<input type="text" value="" name="search" class="form-control" placeholder="Search keyword" id="modal-search-input">
				</div>
				<button type="submit" class="theme_button">Search</button>
			</form>
		</div>
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
							<div class="widget widget_search">
								<form role="search" method="get" id="searchform" class="searchform form-inline" action="http://medico.modernwebtemplates.com/">
									<div class="form-group">
										<input type="text" value="" name="search" id="search" class="form-control" placeholder="">
										<label class="screen-reader-text" for="search">Search for:</label>
									</div>
									<button type="submit" id="searchsubmit" class="theme_button">Search</button>
								</form>
							</div>
                                                    <!-- main nav start -->
							<nav class="mainmenu_wrapper">
								<ul class="mainmenu nav sf-menu">
									<li class="active">
										<a href="index.html">Home</a>
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
										<a href="login.jsp">Login</a>
										
									</li>
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
							<h1 class="thin">Your Profile</h1>
						</div>
						
					</div>
				</div>
			</section>

			<section id="content" class="ls section_padding_top_100 section_padding_bottom_75">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="side-item text-center text-md-left">
                                                            
                                                            <%
                                                            //start of patient
                                                            else if(type.equals("Patient")){
                                                                        Patient p = (Patient)session1.getAttribute("pat_profile");
                                                                  
                                                            %>
                                                            <div class="row">
									

									<div class="col-md-6">
										<div class="item-content right">
											<h2 class="entry-title"><%=p.getName()%></h2>

											
											<div class="border-paragraphs">
												<p>
													<i class="highlight rt-icon2-user2"></i>
													<strong class="grey">Gender : </strong> <%=p.getGender()%>
												</p>

												<p>
													<i class="highlight rt-icon2-briefcase"></i>
													<strong class="grey">Email:</strong><%=p.getEmail()%>
												</p>

												
											</div>

											

										</div>
									</div>
                                                                        <div class="col-md-6">
										//print his appiontments
									</div>

								</div>
                                                            <%
                                                                }
                                                            //end of patient
                                                            //start of doctor
                                                                else{
                                                                        Doctor d = (Doctor)session1.getAttribute("doc_profile");
                                                                    
                                                                %>
								<div class="row">
									<div class="col-md-6">
										<div>
											<img src="images/<%=d.getImg()%>" alt="">
										</div>
									</div>

									<div class="col-md-6">
										<div class="item-content right">
											<h2 class="entry-title"><%=d.getName()%></h2>

											<p><%=d.getFdescr()%></p>

											<div class="border-paragraphs">
												<p>
													<i class="highlight rt-icon2-user2"></i>
													<strong class="grey">Post:</strong> <%=d.getType()%>
												</p>

												<p>
													<i class="highlight rt-icon2-briefcase"></i>
													<strong class="grey">Experience:</strong> <%=d.getExp()%> years
												</p>

												<p>
													<i class="highlight rt-icon2-light-bulb"></i>
													<strong class="grey">Qualification: </strong><%=d.getQual()%>
												</p>
											</div>

											<p>
												<a class="soc-facebook" href="#" title="Facebook" data-toggle="tooltip">#</a>
												<a class="soc-twitter" href="#" title="Twitter" data-toggle="tooltip">#</a>
												<a class="soc-google" href="#" title="Google" data-toggle="tooltip">#</a>
											</p>

										</div>
									</div>

								</div>
                                                            <%
                                                                }
                                                            //end of doctor
                                                            %>
							</div>
						</div>

					</div>
				</div>
			</section>


			<section id="subscribe" class="section_subscribe cs gradient section_padding_50 table_section table_section_lg">
				<div class="container">
					<div class="row">
						<div class="col-lg-6 text-center text-lg-left">
							<h2 class="margin_0">
								<span class="highlight">Subscribe to Our Newsletter</span>
								<span class="thin grey">Be Updated!</span>
							</h2>
						</div>
						<div class="col-lg-6 text-center text-lg-right">
							<div class="widget widget_mailchimp">
								<form id="signup" action="http://medico.modernwebtemplates.com/" method="get">
									<div class="form-group inline-block">
										<input class="form-control" name="email" id="mailchimp_email" type="email" placeholder="Email Address">
									</div>
									<button type="submit" class="theme_button color1">Sign Up!</button>
									<div id="response"></div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</section>

			<footer class="page_contact ls parallax section_padding_75 columns_padding_25" data-stellar-background-ratio="0.5">
				<div class="container">
					<div class="row">

						<div class="col-sm-4 to_animate" data-animation="fadeIn">
							<h3 class="module-header">Contacts</h3>

							<div class="media">
								<div class="media-left size_small">
									<i class="highlight rt-icon2-location-outline big-icon"></i>
								</div>
								<div class="media-body">
									PO Box 54321 Some str. 765, Los Angeles, California, United States
								</div>
							</div>

							<div class="media">
								<div class="media-left size_small">
									<i class="highlight rt-icon2-phone-outline big-icon"></i>
								</div>
								<div class="media-body">
									+12 345 678 9123
								</div>
							</div>

							<div class="media">
								<div class="media-left size_small">
									<i class="highlight rt-icon2-mail2 big-icon"></i>
								</div>
								<div class="media-body">
									<a href="mailto:info@company.com">info@company.com</a>
								</div>
							</div>

						</div>

						<div class="col-sm-4 to_animate" data-animation="fadeIn">
							<h3 class="module-header">Form</h3>
							<form class="contact-form" method="post" action="http://medico.modernwebtemplates.com/">
								<p class="contact-form-name">
									<label for="name">Name
										<span class="required">*</span>
									</label>
									<input type="text" aria-required="true" size="30" value="" name="name" id="name" class="form-control" placeholder="Name">
								</p>
								<p class="contact-form-email">
									<label for="email">Email
										<span class="required">*</span>
									</label>
									<input type="email" aria-required="true" size="30" value="" name="email" id="email" class="form-control" placeholder="Email">
								</p>
								<p class="contact-form-message">
									<label for="message">Message</label>
									<textarea aria-required="true" rows="8" cols="45" name="message" id="message" class="form-control" placeholder="Message"></textarea>
								</p>
								<p class="contact-form-submit topmargin40">
									<button type="submit" id="contact_form_submit" name="contact_submit" class="theme_button">Send Message</button>
								</p>
							</form>

						</div>

						<div class="col-sm-4 to_animate" data-animation="fadeIn">
							<h3 class="module-header">Flickr Widget</h3>
							<div class="widget widget_flickr">
								<ul id="flickr"></ul>
							</div>
						</div>

					</div>
				</div>
			</footer>

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


<!-- Mirrored from medico.modernwebtemplates.com/team-single2.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Jun 2017 12:24:07 GMT -->
</html>