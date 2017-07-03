package com.medico.servlet;
import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
@WebServlet("/UploadServlet")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
                 maxFileSize=1024*1024*10,      // 10MB
                 maxRequestSize=1024*1024*50)   // 50MB


/**
 * Servlet implementation class UploadServlet
 */
public class UploadServlet extends HttpServlet {

	 //  private static final String SAVE_DIR = "uploadFiles";
	    protected void doPost(HttpServletRequest request,
	            HttpServletResponse response) throws ServletException, IOException {
	        // gets absolute path of the web application

	        String appPath = request.getServletContext().getRealPath("");
	        // constructs path of the directory to save uploaded file
	        String savePath = "E:\\javamainproject\\medicalweb\\WebContent\\images" ;
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
	        
	    	HttpSession s = request.getSession(false);
	    	s.setAttribute("img", fileName);   
	    		
	        request.setAttribute("message", "Upload has been done successfully!");
	        getServletContext().getRequestDispatcher("/NewDoctor.jsp").forward(
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
	



