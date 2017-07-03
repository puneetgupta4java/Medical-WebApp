package com.medico.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medico.Connection.ConnectDb;

/**
 * Servlet implementation class updatepass
 */
@WebServlet("/updatepass")
public class updatepass extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s = request.getSession(false);
		String mail = (String)s.getAttribute("mail");
		String otp = (String)s.getAttribute("otp");
		if(otp == null || mail == null){
			response.sendRedirect("MailAndOtp.jsp");
		}
		else{
			String pass = request.getParameter("pass");
			try{
			Connection con = ConnectDb.getConnection();
			PreparedStatement psmt = con.prepareStatement("update patient set Password=? where email = ?;");
			psmt.setString(1, pass);
			psmt.setString(2, mail);
			//System.out.println(psmt);
			int a = psmt.executeUpdate();
			if(a != 0){
				s.removeAttribute(mail);
				s.setAttribute("mail", null);
				response.sendRedirect("login.jsp");
			}
			else{
				psmt = con.prepareStatement("update doctor set password=? where email=?;");
				psmt.setString(1, pass);
				psmt.setString(2, mail);
				//System.out.println(psmt);
				a = psmt.executeUpdate();
				if(a != 0){
					s.removeAttribute(mail);
					s.setAttribute("mail", null);
					response.sendRedirect("login.jsp");
				}
				else
					response.sendRedirect("errorpage.html");		
			}
			}catch(Exception e){
				e.printStackTrace();
				response.sendRedirect("errorpage.html");
			}
		}
			
	}

}
