<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Single record</title>
 <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
<%
	    
	  String filename = request.getParameter("name");  
  String filepath = "E:\\javamainproject\\medicalweb\\WebContent\\upload_record\\";   
	  response.setContentType("APPLICATION/OCTET-STREAM,Application/msword,image/jpeg,application/pdf");   
	  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
	  
	  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
	            
	  int i;   
	  while ((i=fileInputStream.read()) != -1) {  
	    out.write(i);   
	  }   
	  fileInputStream.close(); 
	 
%>

	
</body>
</html>