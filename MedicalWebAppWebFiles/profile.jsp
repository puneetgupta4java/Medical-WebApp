<%-- 
    Document   : profile
    Created on : Jun 21, 2017, 1:30:26 PM
    Author     : puneet gupta
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.medico.pojo.Doctor"%>
<%@page import="com.medico.pojo.Patient"%>
<%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession session1 = request.getSession(false);
    if(session1 == null)
        System.out.print("session is null");
    String type = (String)session1.getAttribute("type");
    if(type == null){
        System.out.print(type);
        response.sendRedirect("login.jsp");
    }
    else{
%>

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
        <style type="text/css">
            *{
                text-align: center;
            }
            .update{
                display: none;
            }
            .up{
                cursor: pointer;
            }
            .new{
                display: block;
            }
            #logout{
                text-align: center;
            }
        </style>
        <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
        
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
									<li>
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
                                                                       
                                                                           <li class="active">
										<a href="Profile">my profile</a>
										
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
                                                            if(type != null && type.equals("Patient")){
                                                                        Patient p = (Patient)session1.getAttribute("pat_profile");
                                                                        ArrayList<String> pat_ap = (ArrayList<String>)session1.getAttribute("appoint_pat");
                                                            %>
                                                            <div class="row">
									

									<div class="col-md-6">
										<div class="item-content right">
                                                                                    
											<h2 class="entry-title"><%=p.getName()%></h2>

											
											<div class="border-paragraphs">
                                                                                                 <p>
													<i class="highlight rt-icon2-user2"></i>
													<strong class="grey">Patient id : </strong> <%=session1.getAttribute("Patient_id")%>
												</p>
												<p>
													<i class="highlight rt-icon2-user2"></i>
													<strong class="grey">Gender : </strong> <%=p.getGender()%>
												</p>

												<p>
													<i class="highlight rt-icon2-briefcase"></i>
													<strong class="grey">Email: </strong><%=p.getEmail()%>&nbsp;&nbsp;<i class="rt-icon2-pencil up" id="mail"></i>
												</p>
                                                                                                 <div class="form-group update mail">
                                                                                                    <form action="UpdateServlet">
                                                                                                        <input type="hidden" name="column" value="email" />
                                                                                                        <input type="text" name="value" class="form-control" placeholder="Enter new E-mail"/>
                                                                                                        <button type="submit" class=""btn btn-default>submit</button>
                                                                                                    </form>
                                                                                                </div>
												
																					<p>
																						 <strong class="grey">Upload your medical records :&nbsp;</strong><a href="Upload_record.jsp">Upload</a>
																					</p>
																					<p>
																						 <strong class="grey">View your medical records :&nbsp;</strong><a href="view_record.jsp">View</a>
																					</p>
												
											</div>
                                                                                            <strong class="grey">Your appointments : </strong>    
											<%
                                                                                        for(String s1 : pat_ap){
                                                                                            %>
                                                                                             &nbsp;&nbsp;<%=s1%>
                                                                                        <%
                                                                                        }
                                                                                        %>

										</div>
									</div>
                                                                        <div class="col-md-6">
										
									</div>

								</div>
                                                            <%
                                                                }
                                                            //end of patient
                                                            //start of doctor
                                                                else{
                                                                        Doctor d = (Doctor)session1.getAttribute("doc_profile");
                                                                        ArrayList<String> doc_ap = (ArrayList<String>)session1.getAttribute("appoint_doc");
                                                                    
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
                                                                                        <br>
                                                                                        <p><strong class="grey">Description : </strong><%=d.getFdescr()%>&nbsp;&nbsp;<i class="rt-icon2-pencil up" id="des"></i>
                                                                                        </p>
                                                                                         <div class="form-group update des">
                                                                                                    <form action="UpdateServlet">
                                                                                                        <input type="hidden" name="column" value="Full_descr" />
                                                                                                        <input type="text" name="value" class="form-control" placeholder="Enter new description"/>
                                                                                                        <button type="submit" class=""btn btn-default>submit</button>
                                                                                                    </form>
                                                                                                </div>
											<div class="border-paragraphs">
                                                                                            <p>
													<i class="highlight rt-icon2-user2"></i>
                                                                                                        <strong class="grey">Doctor id : </strong><%=session1.getAttribute("Doctor_id")%>
												<p>
													<i class="highlight rt-icon2-user2"></i>
													<strong class="grey">Post:</strong> <%=d.getType()%>
												</p>

												<p>
													<i class="highlight rt-icon2-briefcase"></i>
                                                                                                        <strong class="grey">Experience:</strong> <%=d.getExp()%> years&nbsp;&nbsp;<i class="rt-icon2-pencil up" id="exp"></i>							</p>
                                                                                                         
                                                                                                <div class="form-group update exp">
                                                                                                    <form action="UpdateServlet">
                                                                                                        <input type="hidden" name="column" value="Experience" />
                                                                                                        <input type="text" name="value" class="form-control" placeholder="Enter new Experience years"/>
                                                                                                        <button type="submit" class=""btn btn-default>submit</button>
                                                                                                    </form>
                                                                                                </div>
												<p>
													<i class="highlight rt-icon2-book"></i>
                                                                                                        <strong class="grey">Qualification: </strong><%=d.getQual()%>&nbsp;&nbsp;<i class="rt-icon2-pencil up" id="qual"></i>
												</p>
                                                                                                 <div class="form-group update qual">
                                                                                                    <form action="UpdateServlet">
                                                                                                        <input type="hidden" name="column" value="Qualification" />
                                                                                                        <input type="text" name="value" class="form-control" placeholder="Enter new Qualification"/>
                                                                                                        <button type="submit" class=""btn btn-default>submit</button>
                                                                                                    </form>
                                                                                                </div>
                                                                                                <p>
													<i class="highlight rt-icon2-banknote"></i>
                                                                                                        <strong class="grey">Fees: </strong><%=d.getFees()%>&nbsp;&nbsp;<i class="rt-icon2-pencil up" id="fees"></i>
												</p>
                                                                                                 <div class="form-group update fees">
                                                                                                    <form action="UpdateServlet">
                                                                                                        <input type="hidden" name="column" value="INR" />
                                                                                                        <input type="text" name="value" class="form-control"placeholder="Enter new fees"/>
                                                                                                        <button type="submit" class=""btn btn-default>submit</button>
                                                                                                    </form>
                                                                                                </div>
                                                                                                <p>
													<i class="highlight rt-icon2-location"></i>
                                                                                                        <strong class="grey">Address </strong><%=d.getAddress()%>&nbsp;&nbsp;<i class="highlight rt-icon2-pencil up" id="add"></i>
												</p>
                                                                                                 <div class="form-group update add">
                                                                                                    <form action="UpdateServlet">
                                                                                                        <input type="hidden" name="column" value="Address" />
                                                                                                        <input type="text" name="value" class="form-control" placeholder="Enter new address"/>
                                                                                                        <button type="submit" class=""btn btn-default>submit</button>
                                                                                                    </form>
                                                                                                </div>
                                                                                                <p>
													<i class="highlight rt-icon2-location2"></i>
                                                                                                        <strong class="grey">City : </strong><%=d.getCity()%>&nbsp;&nbsp;<i class="rt-icon2-pencil up" id="city"></i>
												</p>
                                                                                                 <div class="form-group update city">
                                                                                                    <form action="UpdateServlet">
                                                                                                        <input type="hidden" name="column" value="City" />
                                                                                                        <input type="text" name="value" class="form-control" placeholder="Enter new city"/>
                                                                                                        <button type="submit" class=""btn btn-default>submit</button>
                                                                                                    </form>
                                                                                                </div>
                                                                                                <p>
													<i class="highlight rt-icon2-phone2"></i>
                                                                                                        <strong class="grey">Phone number: </strong><%=d.getPhn()%>&nbsp;&nbsp;<i class="rt-icon2-pencil up" id="phn"></i>
												</p>
                                                                                                 <div class="form-group update phn">
                                                                                                    <form action="UpdateServlet">
                                                                                                        <input type="hidden" name="column" value="ph_no" />
                                                                                                        <input type="text" name="value" class="form-control" placeholder="Enter new phone number"/>
                                                                                                        <button type="submit" class=""btn btn-default>submit</button>
                                                                                                    </form>
                                                                                                </div>
                                                                                                 <p>
													<i class="highlight rt-icon2-envelope"></i>
                                                                                                        <strong class="grey">E-mail : </strong><%=d.getEmail()%>&nbsp;&nbsp;<i class="rt-icon2-pencil up" id="mail"></i>
												</p>
                                                                                                 <div class="form-group update mail">
                                                                                                    <form action="UpdateServlet">
                                                                                                        <input type="hidden" name="column" value="email" />
                                                                                                        <input type="text" name="value" class="form-control" placeholder="Enter new E-mail"/>
                                                                                                        <button type="submit" class=""btn btn-default>submit</button>
                                                                                                    </form>
                                                                                                </div>
                                                                                                
                                                                                                </div>
											<p>
                                                                                            <strong class="grey">Booked appointments : </strong>
                                                                                        <ul>
											<%
                                                                                        for(String s2 : doc_ap){
                                                                                        %>
                                                                                            <li><%=s2%></li>
                                                                                        <%
                                                                                        }
                                                                                        %>
                                                                                        </ul>
                                                                                        </p>
                                                                                        
                                                                                        <div class="form-group">
                                                                                            <strong class="grey">Click to write a Article :</strong><a href="articleupload.jsp">Click here</a>
                                                                                        </div>
                                                                                          <div class="form-group">
                                                                                            <strong class="grey">Click to write about medicine :</strong><a href="medicineform.jsp">Click here</a>
                                                                                        </div>

										</div>
									</div>

								</div>
                                                            <%
                                                                }
                                                            //end of doctor
}
                                                            %>
							</div>
						</div>

					</div>
				</div>
			</section>
                                                        <a href="Logout" class="btn btn-primary" id="logout">Logout</a>

	
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
<script>
    
         $(document).ready(function(){
         $('.up').click(function(){
             //  alert('hiii'); 
              var id = $(this).attr('id');
             //   alert('.'+id);
              $('.'+id).addClass('new'); 
            }); 
         
         });
             
            
        
        </script>
</body>


<!-- Mirrored from medico.modernwebtemplates.com/team-single2.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 02 Jun 2017 12:24:07 GMT -->
</html>