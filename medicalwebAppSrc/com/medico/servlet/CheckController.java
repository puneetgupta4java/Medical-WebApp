package com.medico.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CheckController
 */
@WebServlet("/CheckController")
public class CheckController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session1 = request.getSession(false);
		String mail = (String)session1.getAttribute("mail");
		String otp = (String)session1.getAttribute("otp");
		
		if(otp.equals(request.getParameter("otp"))){
		//	session1.removeAttribute(otp);
			response.sendRedirect("ChangePass.jsp");
		}
		else
			response.sendRedirect("MailAndOtp.jsp");
	}

}
