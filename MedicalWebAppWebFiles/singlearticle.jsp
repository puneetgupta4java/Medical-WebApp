<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<%@page import="com.medico.pojo.articledto"%>
<%@page import="java.util.ArrayList"%>
<html class="no-js">
<!--<![endif]-->


<!-- Mirrored from medico.modernwebtemplates.com/blog-full.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Jun 2017 12:25:02 GMT -->
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
        <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
	<!--[if lt IE 9]>
		<script src="js/vendor/html5shiv.min.js"></script>
		<script src="js/vendor/respond.min.js"></script>
		<script src="js/vendor/jquery-1.12.4.min.js"></script>
	<![endif]-->
        <style type="text/css">
            
            .up{
                display: none;
            }
            .more{
                border: .5px solid black;
               
            }
            .vis{
                display: block;
            }
            
            </style>
</head>

<body>
	

	<div class="preloader">
		<div class="preloader_image"></div>
	</div>

<%
                        HttpSession s1 = request.getSession(false);
                            String pn = "singlearticle.jsp";
                         if(s1 == null){
                             response.sendRedirect("articleservlet");
                         }
                         String type = null;
                         ArrayList<articledto> a=(ArrayList<articledto>)s1.getAttribute("list"); 
                         if(s1 != null){
                             type = (String)s1.getAttribute("type");
                             s1.setAttribute("pn",pn);
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
			<%
					
					if(a == null){
                                             response.sendRedirect("articleservlet");
						%>
						Nothing to show.........	
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
					for(articledto dto:a){
					%>

						<div class="col-sm-10 col-sm-push-1">

							<article class="post format-standard">

								<div class="entry-thumbnail">

									<div class="entry-meta-corner">
										<span class="date">
										

										
									</div>

									<img src="images/<%=dto.getImage() %>" alt="">
								</div>

								<div class="post-content">
									<div class="entry-content">
										<header class="entry-header">

											<h2 class="entry-title">
												<a href="blog-single-full.html" rel="bookmark"><%=dto.getTitle() %></a>
											</h2>

											<div class="entry-meta">

												<span class="author">
													<i class="rt-icon2-user2 highlight2"></i>
													by
													<a href="blog-full.html"><%=dto.getDoctor_name() %></a>
												</span>

												<span class="categories-links">
													<i class="rt-icon2-tag5 highlight2"></i>
													In
													<a rel="category" href="#"><%=dto.getType() %></a>,
												
												</span>
												
												<span class="date">
												<i class="rt-icon2-calendar5 highlight2"></i>
												
											<time datetime="2014-12-09T15:05:23+00:00" class="entry-date">
												<strong><%=dto.getDate() %></strong>
												
											</time>
										</span>
											</div>
											<!-- .entry-meta -->

										</header>
										<!-- .entry-header -->

										<p><%=dto.getDescription() %></p>
                                                                                <p class="up"><%=dto.getFull_descr() %></p>
										<p class="post-button">
                                                                                    <button type="button" class="btn btn-default more">Read More</button>
										</p>

									</div>
									<!-- .entry-content -->

								</div>
								<!-- .post-content -->
							</article>
							<!-- .post -->

							

						</div>
						<!--eof .col-sm-8 (main content)-->

					</div>
				</div>
			</section>
			<%
					}
						}
			%>


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
        <script>
            
            $(window).load(function(){
               
               $('.more').click(function(){
                   
                   $('.up').addClass('vis');
                    
               }); 
            });
            
        </script>
</body>


</html>