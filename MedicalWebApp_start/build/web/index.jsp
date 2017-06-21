<%-- 
    Document   : index
    Created on : Jun 17, 2017, 1:08:33 PM
    Author     : puneet gupta
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.medico.Connection.ConnectDb"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

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
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/animations.css">
	<link rel="stylesheet" href="css/fonts.css">
	<link rel="stylesheet" href="layerslider/css/layerslider.css">
	<script src="js/vendor/modernizr-2.6.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.1.1.min.js"></script>
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
			<section class="page_topline ls ms section_padding_0 table_section table_section_md">
				<div class="container">
					<div class="row">
						<div class="col-md-3 text-center text-md-left">
							<div class="page_social_icons">
								<a class="soc-facebook" href="#" title="Facebook">#</a>
								<a class="soc-twitter" href="#" title="Twitter">#</a>
								<a class="soc-google" href="#" title="Google">#</a>
								<a class="soc-linkedin" href="#" title="LinkedIn">#</a>
								<a class="soc-dribbble" href="#" title="Dribble">#</a>
							</div>
						</div>

						<div class="col-md-9 text-center text-md-right">

							

							<span>
								<i class="rt-icon2-newspaper-alt highlight"></i> 8 (800) 695-2684
							</span>

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
                                                                        </li>
                                    <li>
										<a href="Profile">my profile</a>
										
									</li>
								</ul>
							</nav>
							<!-- eof main nav -->
						</div>
					</div>
				</div>
			</header>

			<section id="mainslider" class="ls mainslider">
				<div id="layerslider" style="width: 1920px; height: 800px;">
					<!-- slide 1 -->
					<div class="ls-slide" data-ls="slidedelay: 5500; 
                    transition2d:44">

						
						<img src="images/slide_bg.jpg" class="ls-bg" alt="Slide background">

					<img class="ls-l" src="images/slide_woman.png" alt="" style="top: 0px; left: 800px;" data-ls="offsetxin:100;
                        durationin:1000;
                        delayin:300;
                        transformoriginin: 50% 50% 30%;
                        easingin:easeOutQuint;
                        offsetxout:100;
                        durationout:500;
                        scalexin:1.3;
                        scaleyin:1.3;
                        transformoriginin:25% 25% 0;
                        scalexout:1.5;
                        scaleyout:1.5;
                ">

						<p class="ls-l" style="top: 230px; left: 380px; white-space: nowrap; font-size: 50px; font-weight: 300;" data-ls="offsetxin:-100;
                        durationin:1200;
                        delayin:200;
                        easingin:easeOutExpo;
                        offsetxout:100;
                        durationout:500;
                        rotateyin:60;
                        transformoriginin:left 50% 0;
                ">
							<span class="highlight">We Care About</span>
						</p>

						<h3 class="ls-l" style="top: 290px; left: 380px; white-space: nowrap;" data-ls="offsetxin:-50;
                        durationin:1200;
                        delayin:900;
                        easingin:easeOutExpo;
                        offsetxout:50;
                        durationout:500;
                        rotateyin:60;
                        transformoriginin:right 50% 0;
                ">
							Your Health
						</h3>
                           
						<p class="ls-l" style="top: 415px; left: 380px; white-space: nowrap;" data-ls="offsetxin:-150;
                        durationin:1200;
                        delayin:1400;
                        easingin:easeOutExpo;
                        offsetxout:-250;
                        durationout:500;
                        rotateyin:-90;
                        transformoriginin:right 50% 0;
                ">
                        </p>
                     
                            </div>

					<!-- slide 2 -->
				

				</div>
			</section>

			<section id="mainteasers" class="cs section_padding_0 columns_padding_0 table_section table_section_lg">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-4 bg_teaser after_cover color_bg_1">
							<img src="images/teaser01.jpg" alt="">
							<div class="teaser_content media">
								<div class="media-left">
									<h4 class="grey media-heading">Articles</h4>
									

								</div>
								<div class="media-body">
                                    <p>
                                        <ul>
                                            <li>How to get healthy hairs</li>
                                            <li>How to reduce fat</li>
                                            <li>How to increase height</li>
                                            <li>Ways to get sound health</li>
                                            <li>Reasons to get acne</li>
                                            <li>Do's and Dont's while ill</li>
                                        </ul>
                                    </p>
									<form class="order-form" id="order_form">
										
										<button type="submit" class="theme_button">About Articles</button>
									</form>
								</div>
							</div>
						</div>

						<div class="col-lg-4 bg_teaser after_cover color_bg_2">
							<img src="images/teaser02.jpg" alt="">
							<div class="teaser_content media">
								<div class="media-left">
									<h4 class="grey media-heading">Patient</h4>
									<h3>Review</h3>
									<!-- testimonials indicators -->
									<div class="topmargin_30">
										<a class="testimonials-control" href="#carousel-media" role="button" data-slide="prev">
											<i class="fa fa-angle-left-big"></i>
										</a>
										<a class="testimonials-control" href="#carousel-media" role="button" data-slide="next">
											<i class="fa fa-angle-right-big"></i>
										</a>
									</div>
								</div>

								<div class="media-body">
									<div id="carousel-media" class="carousel slide testimonials-carousel" data-ride="carousel">
										<!-- Indicators -->
										<ol class="carousel-indicators">
											<li data-target="#carousel-media" data-slide-to="0" class="active"></li>
											<li data-target="#carousel-media" data-slide-to="1"></li>
											<li data-target="#carousel-media" data-slide-to="2"></li>
										</ol>


										<!-- Wrapper for slides -->
										<div class="carousel-inner">
											<div class="item active">
												<p>
													Ullamco laboris nialiquid exea commodi consat. Ut enim minim veniam norud exotation.
												</p>
												<div class="media">
													<a class="media-left" href="#">
														<img class="media-object" src="images/team/01.jpg" alt="">
													</a>
													<div class="media-body">
														<h4>Jhon Smith</h4>
														<p>
															Google Inc.
														</p>
													</div>
												</div>
											</div>

											<div class="item">
												<p>
													Ullamco laboris nialiquid exea commodi consat. Ut enim minim veniam norud exotation.
												</p>
												<div class="media">
													<a class="media-left" href="#">
														<img class="media-object" src="images/team/02.jpg" alt="">
													</a>
													<div class="media-body">
														<h4>Michael Anderson</h4>
														<p>
															Google Inc.
														</p>
													</div>
												</div>
											</div>

											<div class="item">
												<p>
													Ullamco laboris nialiquid exea commodi consat. Ut enim minim veniam norud exotation.
												</p>
												<div class="media">
													<a class="media-left" href="#">
														<img class="media-object" src="images/team/03.jpg" alt="">
													</a>
													<div class="media-body">
														<h4>Michael Anderson</h4>
														<p>
															Google Inc.
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- eof #carousel-media -->
								</div>
							</div>
						</div>

						<div class="col-lg-4 bg_teaser after_cover color_bg_3">
							<img src="images/teaser03.jpg" alt="">
							<div class="teaser_content media">
								<div class="media-left">
									<h4 class="grey media-heading">About Medicine</h4>
                                </div>
                                <div class="media-body">
                                        <p >MEDICINE According To World Health Organization(WHO) Define Traditional Medicine As
                                    "Sum total of knowledge, skills and Practice based on theories,beliefs and experiences...."</p>
                                    <form class="order-form" id="order_form">

										<button type="submit" class="theme_button">More About Medicine</button>
									</form>
								</div>
								

								</div>
                        
							</div>
						</div>
					</div>
				</div>
			</section>
                        <%
                            HttpSession sessioncheck = request.getSession(false);
                          if(sessioncheck == null){
                            HttpSession session1 = request.getSession(true);
                            int ab = 0;
                            session1.setAttribute("Patient_id", ab);
                            session1.setAttribute("Doctor_id", ab);
                            session1.setAttribute("type", ab);
                           // System.out.print(session1.getAttribute("Patient_id") + "its me");
                          }
                            Connection con = ConnectDb.getConnection();
                            PreparedStatement psmt = con.prepareStatement("select type from doctor");
                            ResultSet rs = psmt.executeQuery();
                            //no duplicacy
                        %>
			<section class="ls section_padding_50">
				<div class="container">
					<div class="row">
						<div class="col-sm-12
                                                     text-center to_animate" data-animation="fadeInDown">
							<h2 class="section_header">Welcome to Medico!</h2>
							<p>Checkout the solution of all your problems which is just a click away, click to know about our services, doctors, hospitals and many more....</p>
							<div>
                                                            <!-- search here -->
								
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

                                                                         <div class="col-md-4">
                                                                           <input class="form-control" type="text" placeholder="Location" name="Location" required="required">
                                                                         </div>
								    <div class="col-md-3">
								        <button type="submit" class="btn btn-default">Submit</button>
								    </div>
								</form>
								
								<!-- eof search -->
                                                        </div>
						</div>
					</div>
				</div>
			</section>

			<section class="ls ms section_padding_75">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="owl-carousel" data-dots="true">
                                                            <% 
                                                                PreparedStatement psmt1 = con.prepareStatement("select Doctor_id,Name,Type,image from doctor;");
                                                                ResultSet rs1 = psmt1.executeQuery();
                                                                int i = 0;
                                                                while(rs1.next()){
                                                            %>
							<!-- item -->	
                                                            <div class="item">
									<div class="thumbnail">
										<img src="images/<%=rs1.getString("image")%>" alt="">
										<div class="caption">
											<h3>
												<a href="FetchDoctor?Doc_id=<%=rs1.getInt("Doctor_id")%>"><%=rs1.getString("Name")%></a>
											</h3>
											<p><%=rs1.getString("Type")%></p>
											<p class="text-center social-icons">
												<a class="soc-facebook" href="#" title="Facebook" data-toggle="tooltip">#</a>
												<a class="soc-twitter" href="#" title="Twitter" data-toggle="tooltip">#</a>
												<a class="soc-google" href="#" title="Google" data-toggle="tooltip">#</a>
											</p>
										</div>
									</div>
								</div>
								<!-- eof item -->
                                                                    <%
                                                                        i++;
                                                                        if(i>7)
                                                                            break;
                                                                    }
                                                                    %>
								

							</div>
						</div>
					</div>
				</div>
			</section>

			<section id="featured" class="cs parallax section_padding_bottom_0 section_padding_top_100">
				<div class="container">
					<div class="row">

						<div class="col-md-8 col-md-push-4">
							<h2 class="section_header grey">
								Why Choose Us?
							</h2>
							<p>Because we provide......</p>
							<div class="row">
								<div class="col-lg-6">
									<div class="teaser media to_animate" data-animation="pullDown">
										<div class="media-left">
											<div class="teaser_icon highlight main_bg_color size_small round">
												<i class="fa fa-hospital-o"></i>
											</div>
										</div>
										<div class="media-body">
											<h3 class="media-heading">
												<p>Modern Clinic</p>
											</h3>
											<p>We provide you every modern facilities and services</p>
										</div>
									</div>


									<div class="teaser media to_animate" data-animation="pullDown">
										<div class="media-left">
											<div class="teaser_icon highlight main_bg_color size_small round">
												<i class="fa fa-user-md"></i>
											</div>
										</div>
										<div class="media-body">
											<h3 class="media-heading">
												<p>Qualified Doctors</p>
											</h3>
											<p>We only provide and register qualified doctors and hospitals</p>
										</div>
									</div>
								</div>

								<div class="col-lg-6">
									<div class="teaser media to_animate" data-animation="pullDown">
										<div class="media-left">
											<div class="teaser_icon highlight main_bg_color size_small round">
												<i class="fa fa-ambulance"></i>
											</div>
										</div>
										<div class="media-body">
											<h3 class="media-heading">
												<p>Emergency</p>
											</h3>
											<p>It helps you in emergency services from getting an appointment to get the medicines</p>
										</div>
									</div>


									<div class="teaser media to_animate" data-animation="pullDown">
										<div class="media-left">
											<div class="teaser_icon highlight main_bg_color size_small round">
												<i class="fa fa-medkit"></i>
											</div>
										</div>
										<div class="media-body">
											<h3 class="media-heading">
												<p>Health Care</p>
											</h3>
											<p>We care about you and your family</p>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-4 col-md-pull-8 text-center to_animate" data-animation="fadeInLeft">
							<img id="featured-person" class="top-overlap" src="images/girl.png" alt="">
						</div>


					</div>
				</div>
			</section>


			<section id="about" class="ls section_padding_100 columns_padding_25">
				<div class="container">

					<div class="row">


						<div class="col-md-4">

							<h2 class="widget-title">Choose your Doctor</h2>

							<div class="panel-group" id="accordion">

								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
												Psychiatry Department
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
													Physiologist Study The State of The Human Body,Including Emotions And Need. 
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapse2" class="collapsed">
												Allergist
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
													Allergist Work With a wide Variety of Pateints ,Who Suffer From Issues Related To Allergies,Such As Hay,Fever,Asthma. 
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapse3" class="collapsed">
												Dentist
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
													Dentist Work With Human Mouth,examining teeth And Gum Health And Preventing And Detecting various Different Issues ,Such As Cavities And Bleeding Gums. 
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapse4" class="collapsed">
												Cardiologist
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
													Cardiologist Specify in The treatment Of Heart And Many Diseases And issues Realated to it.
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapse5" class="collapsed">
												Gynecologist
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
													Gynecologist Work With the Female Reproductive System to Asses and Prevent issues that could Potentially Causes Fertility issues.
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>

						</div>

						<div class="col-md-4">

							<h2 class="widget-title">Services</h2>

							<p>Medical Services Are the Sheet Anchor Of Most of General hospitals .They Are also Closely Related To all other Departments That Sharp lines Can't Be Drawn To Delineate Specific Responsibilites. </p>


							<ul class="list1 darklinks">
								<li>
									<a href="services.html">Medical Service</a>
								</li>
								<li>
									<a href="services.html">Surgical Service</a>
								</li>
								<li>
									<a href="services.html">Obstetrical Service</a>
								</li>
								<li>
									<a href="services.html">Laboratory Service</a>
								</li>
								<li>
									<a href="services.html">Radiology Service</a>
								</li>
                                <li>
									<a href="services.html">Physiotherapy And Rehabilation  Service</a>
								</li>
                                <li>
									<a href="services.html">Nursing Service</a>
								</li>
                                				
                                									

							</ul>


						</div>

						<div class="col-md-4">
							<h2 class="widget-title">Advantages</h2>

							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li class="active">
									<a href="#tab1" role="tab" data-toggle="tab">Quality</a>
								</li>
								<li>
									<a href="#tab2" role="tab" data-toggle="tab">Comfort</a>
								</li>
								
							</ul>

							<!-- Tab panes -->
							<div class="tab-content">
								<div class="tab-pane fade in active" id="tab1">
									<p class="featured-tab-image">
										<img src="images/gallery/01.jpg" alt="">
									</p>
									We are providing World Class health services,doctors,hospitals at your click. We are also providing better opportunities in favourable conditions with high quality medicines
								</div>
								<div class="tab-pane fade" id="tab2">
									<p class="featured-tab-image">
										<img src="images/gallery/02.jpg" alt="">
									</p>
									We are providing comfort from standing in queues to just get an appiontment or to purchase a medicine because everything is just a click away
								</div>
								
							</div>


						</div>

					</div>
				</div>
			</section>

			


			


		
			<section class="section_subscribe ls parallax section_padding_50">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 text-center to_animate" data-animation="pullUp">
							<h3 class="topmargin_0">Give us your valuable</h3>
							<h2 class="section_header">
								<span class="highlight">Feedback</span>
							</h2>
							<div class="widget widget_mailchimp">
								<form id="signup" action="http://medico.modernwebtemplates.com/" method="get">
									<div class="form-group">
										<input class="form-control text-center" name="email" id="mailchimp_email" type=number max="5" min="1" placeholder="Enter value between 1 and 5">
									</div>
									<button type="submit" class="theme_button topmargin_20">Submit!</button>
									<div id="response"></div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</section>


			<section id="progress" class="cs main_color2 section_padding_50 parallax">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-3 col-sm-6">

							<div class="teaser text-center">
								<div class="teaser_icon grey size_normal">
									<i class="fa fa-user-md"></i>
								</div>
								<h3 class="counter highlight" data-from="0" data-to="540" data-speed="1800">0</h3>
								<p>Doctors</p>
							</div>

						</div>

						<div class="col-md-3 col-sm-6">

							<div class="teaser text-center">
								<div class="teaser_icon grey size_normal">
									<i class="fa fa-thumbs-o-up"></i>
								</div>
								<h3 class="counter highlight" data-from="0" data-to="4350" data-speed="2100">0</h3>
								<p>Patients</p>
							</div>

						</div>


						<div class="col-md-3 col-sm-6">

							<div class="teaser text-center">
								<div class="teaser_icon grey size_normal">
									<i class="fa fa-hospital-o"></i>
								</div>
								<h3 class="counter highlight" data-from="0" data-to="256" data-speed="1400">0</h3>
								<p>Rooms</p>
							</div>

						</div>

						<div class="col-md-3 col-sm-6">

							<div class="teaser text-center">
								<div class="teaser_icon grey size_normal">
									<i class="fa fa-trophy"></i>
								</div>
								<h3 class="highlight counter-wrap">
									<span class="counter" data-from="0" data-to="10" data-speed="1500">0</span>
									<span class="counter-add">+</span>
								</h3>
								<p>Saved</p>
							</div>

						</div>
					</div>
				</div>
			</section>

			<footer class="page_contact ls parallax section_padding_75 columns_padding_25" data-stellar-background-ratio="0.5">
				<div class="container">
					<div class="row">

                    <div class="col-sm-4 to_animate" data-animation="fadeIn">
							<h3 class="module-header">Medical World</h3>
							<div class="widget widget_flickr">
								<ul id="flickr"></ul>
							</div>
						</div>
						<div class="col-sm-4 to_animate" data-animation="fadeIn">
							
						</div>
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
