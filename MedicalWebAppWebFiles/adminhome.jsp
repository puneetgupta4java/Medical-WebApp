<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
 <head><title>Admin home</title>
<style>
body {
    font-family: "Lato", sans-serif;
    background: #1E547F;
    color: #fff;
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
    text-align:center;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s

}

.sidenav a:hover{
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}
    .wel{
        font-size: 40px;
        font-family: Arail;
        margin-top: 17%;
    }
    .container{
        text-align: center;
    }
@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
</head>
<body>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <br><br>
<a href="delete.jsp?type=patient" >delete patient</a>
<a href="delete.jsp?type=doctor">delete doctor</a>
<a href="logoutAdmin">Logout</a>
</div>
<%
	HttpSession s = 	request.getSession(false);
	String admin = (String)s.getAttribute("admin_name");
	if(admin == null)
		response.sendRedirect("adminlogin.jsp");
	else{
%>
<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; </span>
    
    <div class="container">
        <p class="wel">Welcome , Admin</p>
        <p>Click on the menu to get to know about your rights</p>
    </div>

<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "100%";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>
     <%
		}
     %>
</body>
</html> 
