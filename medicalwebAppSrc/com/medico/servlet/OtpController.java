package com.medico.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medico.Connection.ConnectDb;
import com.medico.pojo.GenerateOtp;
import com.medico.pojo.SendEmail;


/**
 * Servlet implementation class OtpController
 */
@WebServlet("/OtpController")
public class OtpController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s = request.getSession(false);
		String mail = request.getParameter("mail");
		try{
			Connection con = ConnectDb.getConnection();
			PreparedStatement psmt = con.prepareStatement("select * from patient where email = ?;");
			psmt.setString(1, mail);
			ResultSet rs = psmt.executeQuery();
		if(rs.next()){
			s.setAttribute("mail", mail);
			
			String otp = GenerateOtp.genOtp();
			System.out.println(otp);
			s.setAttribute("otp", otp);
			SendEmail.email( mail,"","","OTP",otp);
		}
		else{
			psmt = con.prepareStatement("select * from doctor where email=?;");
			psmt.setString(1, mail);
			rs = psmt.executeQuery();
		if(rs.next()){
			s.setAttribute("mail", mail);
			String otp = GenerateOtp.genOtp();
			System.out.println(otp);
			s.setAttribute("otp", otp);
			SendEmail.email( mail,"","","OTP",otp);
		}
			s.setAttribute("msg", "enter correct email");
		}
		response.sendRedirect("MailAndOtp.jsp");
		}catch(Exception e){
			response.sendRedirect("errorpage.html");
		}
	}

}
