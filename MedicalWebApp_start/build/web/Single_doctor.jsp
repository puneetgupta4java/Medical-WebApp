<%-- 
    Document   : Single_doctor
    Created on : Jun 18, 2017, 11:09:55 AM
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
        
        <style type ="text/css" rel="Stylesheet">
            
            .mybtn{
                border: 1px solid black;
            }
            
        </style>
</head>

<body>
	<!--[if lt IE 9]>
		<div class="bg-danger text-center">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/" class="highlight">upgrade your browser</a> to improve your experience.</div>
	<![endif]-->

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
							<a href="index-2.html" class="logo top_logo">
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
										<a href="contact.html">Login</a>
										
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
							<h1 class="thin">Doctor</h1>
						</div>
						
					</div>
				</div>
			</section>

                        <%
                            HttpSession s = request.getSession(false);
                            Doctor d = (Doctor)s.getAttribute("doc");
                            ArrayList<String> a = (ArrayList<String>)s.getAttribute("timings");
                        %>
                        
			<section id="content" class="ls section_padding_top_100 section_padding_bottom_75">
				<div class="container">
					<div class="row">
						<div class="col-md-5">
							<img src="images/<%=d.getImg()%>" alt="">
							<h1><%=d.getName()%></h1>
							<p class="highlight"><%=d.getType()%></p>
							<p class="social-icons">
								<a class="soc-facebook" href="#" title="" data-toggle="tooltip" data-original-title="Facebook">#</a>
								<a class="soc-twitter" href="#" title="" data-toggle="tooltip" data-original-title="Twitter">#</a>
								<a class="soc-google" href="#" title="" data-toggle="tooltip" data-original-title="Google">#</a>
							</p>
							<ul class="list1 no-bullets">

								<li>
									<div class="media">
										<div class="media-left">
											<div class="highlight size_small">
												<i class="rt-icon2-location-outline"></i>
											</div>
										</div>
										<div class="media-body">
											<h4 class="media-heading">Address:</h4>
                                                                                        <%=d.getAddress()%>,<%=d.getCity()%>
                                                                                </div>
									</div>
								</li>

								<li>
									<div class="media">
										<div class="media-left">
											<div class="highlight size_small">
												<i class="rt-icon2-phone-outline"></i>
											</div>
										</div>
										<div class="media-body">
											<h4 class="media-heading">Phone:</h4>
											<%=d.getPhn()%>
										</div>
									</div>
								</li>

								<li>
									<div class="media">
										<div class="media-left">
											<div class="highlight size_small">
												<i class="rt-icon2-mail2"></i>
											</div>
										</div>
										<div class="media-body">
											<h4 class="media-heading">Email:</h4>
											<%=d.getEmail()%>
										</div>
									</div>
								</li>

								


							</ul>

						</div>

						<div class="col-md-6 col-md-offset-1">
							<h2 class="entry-title">Meet Our Member!</h2>

							<p class="topmargin_20">
							<%=d.getDescr()%>	
                                                        </p>
							<ul class="list1 darklinks">
								<li>
									Qualifications : <%=d.getQual()%>
								</li>
								<li>
									Experience : <%=d.getExp()%> years
								</li>
								<li>
									Fees(INR) : Rs.<%=d.getFees()%>
								</li>
								
							</ul>


							<!-- Nav tabs -->
							<ul class="nav nav-tabs topmargin_40" role="tablist">
								<li class="active">
									<a href="#tab1" role="tab" data-toggle="tab">Book an Appointment</a>
								</li>
								<li>
									<a href="#tab2" role="tab" data-toggle="tab">About Doctor</a>
								</li>
								
							</ul>

							<!-- Tab panes -->
							<div class="tab-content top-color-border bottommargin_30">

								<div class="tab-pane fade in active" id="tab1">
                                                                    <form action="Appointment?Doctor_id=<%=d.getId()%>" method="post">
                                                                        <div class="form-group">
                                                                            <select name="alloted_time" class="form-control">
                                                                            <%
                                                                                for(String s1 : a){
                                                                            %>
                                                                            <option><%=s1%></option>
                                                                            <%
                                                                            }
                                                                            %>
                                                                        </select>
                                                                        </div>
                                                                    <button type="submit" class="btn btn-default mybtn">Book an Appointment</button>
                                                                    </form>
								</div>

								<div class="tab-pane fade" id="tab2">
									<h3 class="topmargin_0">Biography:</h3>
									<p>
									<%=d.getFdescr()%>	
                                                                        </p>
								</div>

								
							</div>
							<!-- eof .tab-content -->

							<blockquote>
								At vero eos et accusam et justo duo dolores ea rebum sclita kasd gubergren takimata sanctus est lorem ipsum dolor sit amet lorem ipsum dolor sitamet consetetur.
								<div class="media">
									<div class="media-left">
										<img src="images/team/03.jpg" alt="">
									</div>
									<div class="media-body">
										<h4 class="media-heading">Patrick Anderson,</h4>
										Patient
									</div>
								</div>
							</blockquote>

							

						</div>
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
							<p>Copyright 2016. Medico</p>
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