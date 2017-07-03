<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.medico.Connection.ConnectDb"%>
<%@page import="java.sql.Connection"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view records</title>
</head>
<style type="text/css">
*{
	text-align: center;
}
</style>
<body>
<strong>Your records : </strong>
<ul>
<%
String msg = (String)request.getAttribute("message");
if(msg != null){
	%>
	<%= msg %>
	<%
}
HttpSession s = request.getSession(false);
int id = (int)s.getAttribute("Patient_id");
Connection con = null;
PreparedStatement psmt = null;
ResultSet rs = null;
try{
	con = ConnectDb.getConnection();
	psmt = con.prepareStatement("Select * from record where Patient_id = ?");
	psmt.setInt(1, id);
	rs = psmt.executeQuery();
	while(rs.next()){
%>

<li>
<a href="Single_record.jsp?name=<%=rs.getString("record") %>"><%=rs.getString("record") %></a>
</li>	

<%		
	}
}catch(Exception e){
	e.printStackTrace();
}
%>
</ul>
</body>
</html>