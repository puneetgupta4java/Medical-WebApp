package com.medico.servlet;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.medico.Connection.ConnectDb;



/**
 * Servlet implementation class UploadRecord
 */
@WebServlet("/UploadRecord")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)   // 50MB

public class UploadRecord extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession s = request.getSession(false);
		int id = (int)s.getAttribute("Patient_id");
		Connection con = null;
		PreparedStatement psmt = null;
	//	ResultSet rs = null;
		
		 String savePath = "E:\\javamainproject\\medicalweb\\WebContent\\upload_record" ;
	        System.out.println(savePath);
	         
	        // creates the save directory if it does not exists
	        File fileSaveDir = new File(savePath);
	        if (!fileSaveDir.exists()) {
	            fileSaveDir.mkdir();
	        }
	         String path = null,fileName = null;
	        for (Part part : request.getParts()) {
	            fileName = extractFileName(part);
	            // refines the fileName in case it is an absolute path
	            fileName = new File(fileName).getName();
	            part.write(savePath + File.separator + fileName);
	            path=savePath + File.separator + fileName;
	            System.out.println(fileName);
	            System.out.println(path);
	        }
	        
	    	try{
	    		
	    		con = ConnectDb.getConnection();
	    		psmt = con.prepareStatement("insert into record values(?,?);");
	    		psmt.setInt(1, id);
	    		psmt.setString(2,fileName);
	    		int rs = psmt.executeUpdate();
	    	
	    	}catch(Exception e){
	    		e.printStackTrace();
	    		response.sendRedirect("errorpage.html");
	    	}
	    		
	        request.setAttribute("message", "Upload has been done successfully!");
	        getServletContext().getRequestDispatcher("/view_record.jsp").forward(
	                request, response);
	    }
	    /**
	     * Extracts file name from HTTP header content-disposition
	     */
	    private String extractFileName(Part part) {
	        String contentDisp = part.getHeader("content-disposition");
	        String[] items = contentDisp.split(";");
	        for (String s : items) {
	            if (s.trim().startsWith("filename")) {
	                return s.substring(s.indexOf("=") + 2, s.length()-1);
	            }
	        }
	        return "";
	    }
	}
	
	
		
	
