<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->


<!-- Mirrored from medico.modernwebtemplates.com/contact2.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Jun 2017 12:25:31 GMT -->
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
 <%
                            String pn = "contact.jsp";
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
                          
                        
                          String type = null;
                           if(sessioncheck != null){
                             type = (String)sessioncheck.getAttribute("type");
                             sessioncheck.setAttribute("pn",pn);
                           }
                        %>
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
							<a href="index.jsp" class="logo top_logo">
								<img src="images/logo.png" alt=""> Medico
							</a>
							<!-- header toggler -->
							<span class="toggle_menu">
								<span></span>
							</span>
						</div>
						
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

			<section id="breadcrumbs" class="breadcrumbs_section cs section_padding_25 gradient table_section table_section_md">
				<div class="container">
					<div class="row">
						<div class="col-md-6 text-center text-md-left">
							<h1 class="thin">Contact </h1>
						</div>
						<div class="col-md-6 text-center text-md-right">
							<ol class="breadcrumb">
								
							</ol>
						</div>
					</div>
				</div>
			</section>

			<section id="content" class="ls section_padding_75">
				
						<div class="col-sm-12">
						<div class="row topmargin_10">
						<div class="col-sm-4 to_animate" data-animation="pullDown">
							<div class="teaser text-center">
								<div class="teaser_icon highlight size_big">
									<i class="rt-icon2-phone-outline"></i>
								</div>

								<p>
									<span class="grey">Phone:</span> +91-7906281951
									<br>
                                   
								</p>

							</div>
						</div>
						<div class="col-sm-4 to_animate" data-animation="pullDown">
							<div class="teaser text-center">
								<div class="teaser_icon highlight size_big">
									<i class="rt-icon2-location-outline"></i>
								</div>

								<p>
									R.K.G.I.T
									<br> 5 KM STONE MERRUT ROAD,
									<br> GHAZIABAD
								</p>

							</div>
						</div>
						<div class="col-sm-4 to_animate" data-animation="pullDown">
							<div class="teaser text-center">
								<div class="teaser_icon highlight size_big">
									<i class="rt-icon2-mail2"></i>
								</div>

								
                                <p>naincygupta29@gmail.com</p>

							</div>
						</div>

					</div>

						
<!-- 							<section class="page_map ls topmargin_40" > -->
								
									
<!-- 									 <img src="images/map1.jpg" alt="">  -->
                               
<!-- 							</section> -->
						<!--  new map -->
				<section class="topmargin_40" > 
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2368.5378828838893!2d77.44178699763103!3d28.70151862476312!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xaaa871ac3acc613b!2sRaj+Kumar+Goel+Institute+Of+Technology!5e0!3m2!1sen!2sin!4v1499104943623" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>				</section>
									
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

	<!-- Google Map Script -->
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDTwYSMRGuTsmfl2z_zZDStYqMlKtrybxo"></script>
</body>


<!-- Mirrored from medico.modernwebtemplates.com/contact2.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Jun 2017 12:25:31 GMT -->
</html>