<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/animations.css">
	<link rel="stylesheet" href="css/fonts.css">
	<link rel="stylesheet" href="layerslider/css/layerslider.css">
	<script src="js/vendor/modernizr-2.6.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.1.1.min.js"></script>
<title>Enter new password</title>
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

        <!-- form -->
        
        <h3>New Password</h3>
                                                    <form action="updatepass" method="post">
                                                                    <div class="col-md-1"></div>
                                                                           
                                                                         <div class="form-group">

                                                                         <div class="col-md-7">
                                                                           <input class="form-control" type="text" placeholder="Enter new password" name="pass" required="required">
                                                                         </div>
                                                                         
								    <div class="col-md-3">
								        <button type="submit" class="btn btn-sucess mybtn">Submit</button>
								    </div>
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
