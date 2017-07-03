<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!Doctype HTML>
<html>
 <head>
 <title>Login</title>
    
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/animations.css">
	<link rel="stylesheet" href="css/fonts.css">
	<link rel="stylesheet" href="layerslider/css/layerslider.css">
	<script src="js/vendor/modernizr-2.6.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.1.1.min.js"></script>
<style type="text/css">
    
*, *:before, *:after {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: 'Open Sans', Helvetica, Arial, sans-serif;
  background: #ededed;
}

input, button {
  border: none;
  outline: none;
  background: none;
  font-family: 'Open Sans', Helvetica, Arial, sans-serif;
}

.tip {
  font-size: 20px;
  margin: 40px auto 50px;
  text-align: center;
}

.cont {
  overflow: hidden;
  position: relative;
  width: 900px;
  height: 550px;
  margin: 0 auto 100px;
  background: #fff;
  margin-top: 35px;
}

.form {
  position: relative;
  width: 640px;
  height: 100%;
  -webkit-transition: -webkit-transform 1.2s ease-in-out;
  transition: -webkit-transform 1.2s ease-in-out;
  transition: transform 1.2s ease-in-out;
  transition: transform 1.2s ease-in-out, -webkit-transform 1.2s ease-in-out;
  padding: 50px 30px 0;
}

.sub-cont {
  overflow: hidden;
  position: absolute;
  left: 640px;
  top: 0;
  width: 900px;
  height: 100%;
  padding-left: 260px;
  background: #fff;
  -webkit-transition: -webkit-transform 1.2s ease-in-out;
  transition: -webkit-transform 1.2s ease-in-out;
  transition: transform 1.2s ease-in-out;
  transition: transform 1.2s ease-in-out, -webkit-transform 1.2s ease-in-out;
}
.cont.s--signup .sub-cont {
  -webkit-transform: translate3d(-640px, 0, 0);
          transform: translate3d(-640px, 0, 0);
}

button {
  display: block;
  margin: 0 auto;
  width: 260px;
  height: 36px;
  border-radius: 30px;
  color: #fff;
  font-size: 15px;
  cursor: pointer;
}

.img {
  overflow: hidden;
  z-index: 2;
  position: absolute;
  left: 0;
  top: 0;
  width: 260px;
  height: 100%;
  padding-top: 360px;
}
.img:before {
  content: '';
  position: absolute;
  right: 0;
  top: 0;
  width: 900px;
  height: 100%;
  background-image: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/142996/sections-3.jpg");
  background-size: cover;
  -webkit-transition: -webkit-transform 1.2s ease-in-out;
  transition: -webkit-transform 1.2s ease-in-out;
  transition: transform 1.2s ease-in-out;
  transition: transform 1.2s ease-in-out, -webkit-transform 1.2s ease-in-out;
}
.img:after {
  content: '';
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.6);
}
.cont.s--signup .img:before {
  -webkit-transform: translate3d(640px, 0, 0);
          transform: translate3d(640px, 0, 0);
}
.img__text {
  z-index: 2;
  position: absolute;
  left: 0;
  top: 50px;
  width: 100%;
  padding: 0 20px;
  text-align: center;
  color: #fff;
  -webkit-transition: -webkit-transform 1.2s ease-in-out;
  transition: -webkit-transform 1.2s ease-in-out;
  transition: transform 1.2s ease-in-out;
  transition: transform 1.2s ease-in-out, -webkit-transform 1.2s ease-in-out;
}
.img__text h2 {
  margin-bottom: 10px;
  font-weight: normal;
}
.img__text p {
  font-size: 14px;
  line-height: 1.5;
}
.cont.s--signup .img__text.m--up {
  -webkit-transform: translateX(520px);
          transform: translateX(520px);
}
.img__text.m--in {
  -webkit-transform: translateX(-520px);
          transform: translateX(-520px);
}
.cont.s--signup .img__text.m--in {
  -webkit-transform: translateX(0);
          transform: translateX(0);
}
.img__btn {
  overflow: hidden;
  z-index: 2;
  position: relative;
  width: 100px;
  height: 36px;
  margin: 0 auto;
  background: transparent;
  color: #fff;
  text-transform: uppercase;
  font-size: 15px;
  cursor: pointer;
}
.img__btn:after {
  content: '';
  z-index: 2;
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  border: 2px solid #fff;
  border-radius: 30px;
}
.img__btn span {
  position: absolute;
  left: 0;
  top: 0;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  width: 100%;
  height: 100%;
  -webkit-transition: -webkit-transform 1.2s;
  transition: -webkit-transform 1.2s;
  transition: transform 1.2s;
  transition: transform 1.2s, -webkit-transform 1.2s;
}
.img__btn span.m--in {
  -webkit-transform: translateY(-72px);
          transform: translateY(-72px);
}
.cont.s--signup .img__btn span.m--in {
  -webkit-transform: translateY(0);
          transform: translateY(0);
}
.cont.s--signup .img__btn span.m--up {
  -webkit-transform: translateY(72px);
          transform: translateY(72px);
}

h2 {
  width: 100%;
  font-size: 26px;
  text-align: center;
}

label {
  display: block;
  width: 260px;
  margin: 25px auto 0;
  text-align: center;
}
label span {
  font-size: 12px;
  color: #cfcfcf;
  text-transform: uppercase;
}

input {
  display: block;
  width: 100%;
  margin-top: 5px;
  padding-bottom: 5px;
  font-size: 16px;
  border-bottom: 1px solid rgba(0, 0, 0, 0.4);
  text-align: center;
}

.forgot-pass {
  margin-top: 15px;
  text-align: center;
  font-size: 12px;
  color: #cfcfcf;
}

.submit {
  margin-top: 40px;
  margin-bottom: 20px;
  background: #d4af7a;
  text-transform: uppercase;
}

.fb-btn {
  border: 2px solid #d3dae9;
  color: #8fa1c7;
}
.fb-btn span {
  font-weight: bold;
  color: #455a81;
}

.sign-in {
  -webkit-transition-timing-function: ease-out;
          transition-timing-function: ease-out;
}
.cont.s--signup .sign-in {
  -webkit-transition-timing-function: ease-in-out;
          transition-timing-function: ease-in-out;
  -webkit-transition-duration: 1.2s;
          transition-duration: 1.2s;
  -webkit-transform: translate3d(640px, 0, 0);
          transform: translate3d(640px, 0, 0);
}

.sign-up {
  -webkit-transform: translate3d(-900px, 0, 0);
          transform: translate3d(-900px, 0, 0);
}
.cont.s--signup .sign-up {
  -webkit-transform: translate3d(0, 0, 0);
          transform: translate3d(0, 0, 0);
}

.icon-link {
  position: absolute;
  left: 5px;
  bottom: 5px;
  width: 32px;
}
.icon-link img {
  width: 100%;
  vertical-align: top;
}
.icon-link--twitter {
  left: auto;
  right: 5px;
}
</style>
</head>
    <body>
        
        <div id="canvas">
		<div id="box_wrapper">
        <%
                            HttpSession sessioncheck = request.getSession(false);
                            String pn = null;
                          if(sessioncheck == null){
                            HttpSession session1 = request.getSession(true);
                            int ab = 0;
                            String b = null;
                            session1.setAttribute("Patient_id", ab);
                            session1.setAttribute("Doctor_id", ab);
                            session1.setAttribute("type", b);
                            pn = "index.jsp";
                              session1.setAttribute("pn", pn);
                           // System.out.print(session1.getAttribute("Patient_id") + "its me");
                          }
                           String type = null;
                           if(sessioncheck != null){
                                pn = (String)sessioncheck.getAttribute("pn");
                                if(pn == null){
                                    pn = "index.jsp";
                                    sessioncheck.setAttribute("pn", pn);
                                }
                             type = (String)sessioncheck.getAttribute("type");
                           }
        %>
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
                                                                        <%
                                                                                if(type == null){
                                                                        %>
                                                                        <li class="active">
										<a href="login.jsp">Login</a>
										
									</li>   
                                                                        
                                                                       
                                                                        <%
                                                                        }
                                                                            else{
                                                                        %>
                                                                           <li class="active">
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

        <div class="col-md-12 text-right">
        <p>To register as a Doctor </p><a href="upload_img.jsp" class="btn btn-primary"> click here</a>
        </div>
<div class="cont hidden-xs hidden-sm">
<form action="LoginServlet" method="post">
  <div class="form sign-in form-group">
    <h2>Welcome back,</h2>
     <label>
      <span>Are you a :</span>
      <select name="type" class="form-control">
          <option>Patient</option>
          <option>Doctor</option>
      </select>
    </label>
    <label>
      <span>Name</span>
      <input type="text" name="username"/>
    </label>
    <label>
      <span>Password</span>
      <input type="password" name="pass"/>
    </label>
   
    <button type="submit" class="submit">Sign In</button>
   									 <div class="form-group text-center">
									 <a href="MailAndOtp.jsp">Forgot Password?</a>
									</div>
  </div>
  </form>
  <form action="SignupServlet" method="post">
  <div class="sub-cont">
    <div class="img">
      <div class="img__text m--up">
        <h2>New here?</h2>
        <p>Sign up and discover great amount of new opportunities!</p>
      </div>
      <div class="img__text m--in">
        <h2>One of us?</h2>
        <p>If you already has an account, just sign in. We've missed you!</p>
      </div>
      <div class="img__btn">
        <span class="m--up">Sign Up</span>
        <span class="m--in">Sign In</span>
      </div>
    </div>
    <div class="form sign-up">
    
      <label>
        <span>Name</span>
        <input type="text"  name="username"/>
      </label>
      <label>
        <span>Email</span>
        <input type="email"  name="email"/>
      </label>
      <label>
        <span>Password</span>
        <input type="password" name="pass"/>
      </label>
         <label>
        <span>Gender</span>
        <input type="text" name="gender"/>
      </label>
         
      
         
      <button type="submit" class="submit">Sign Up</button>
      
    </div>
  </div>
  </form>
</div>

        <!-- for small screen  -->
    <div class="container hidden-lg hidden-md">    
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Sign In</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="MailAndOtp.jsp">Forgot password?</a></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form class="form-horizontal" action="LoginServlet" method="post">
                                   <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon">You are a:</span>
                                          <select name="type" class="form-control">
                                              <option>Patient</option>
                                              <option>Doctor</option>
                                          </select>                                      
                                    </div>  
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="login-username" type="text" class="form-control" name="username" value="" placeholder="username or email">                                        
                                    </div>
                                
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input id="login-password" type="password" class="form-control" name="pass" placeholder="password">
                                    </div>
                                    

                                
                           


                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                    <div class="col-sm-12 controls">
                                      <input type="submit" class="form-control mybtn" value="submit"/>
                                      
                                    </div>
                                </div>

									

                                <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                            Don't have an account! 
                                        <a href="#" onClick="$('#loginbox').hide(); $('#signupbox').show()">
                                            Sign Up Here
                                        </a>
                                        </div>
                                    </div>
                                </div>    
                            </form>     



                        </div>                     
                    </div>  
        </div>
        <div id="signupbox" style="display:none; margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Sign Up</div>
                            <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="#" onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign In</a></div>
                        </div>  
                        <div class="panel-body" >
                            <form class="form-horizontal" action="SignupServlet" method="post">
                                
                                
                                    
                                
                                  
                                <div class="form-group">
                                    <label for="email" class="col-md-3 control-label">Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="username" placeholder="Enter UserName">
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">Email</label>
                                    <div class="col-md-9">
                                        <input type="email" class="form-control" name="email" placeholder="Enter Email">
                                    </div>
                                </div>
                               
                                <div class="form-group">
                                    <label for="password" class="col-md-3 control-label">Password</label>
                                    <div class="col-md-9">
                                        <input type="password" class="form-control" name="pass" placeholder="Enter Password">
                                    </div>
                                </div>
                                     <div class="form-group">
                                    <label for="password" class="col-md-3 control-label">Gender</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="gender" placeholder="Enter Gender">
                                    </div>
                                </div>
                                    
                               

                                <div class="form-group">
                                    <!-- Button -->                                        
                                    <div class="col-md-offset-3 col-md-9">
                                         <input type="submit" class="form-control mybtn" value="submit">                                       
                                    </div>
                                </div>
                                
                                
                                
                                
                            </form>
                         </div>
                    </div>

               
               
                
         </div> 
    </div>
<!-- footer -->

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
     
     <script>
    
        document.querySelector('.img__btn').addEventListener('click', function() {
          document.querySelector('.cont').classList.toggle('s--signup');
        });
    
         
     </script>
    </body>
</html>