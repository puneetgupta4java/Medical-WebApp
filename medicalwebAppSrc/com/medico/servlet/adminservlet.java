package com.medico.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medico.Connection.ConnectDb;

/**
 * Servlet implementation class adminservlet
 */
@WebServlet("/adminservlet")
public class adminservlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("adminname");
		String pass=request.getParameter("adminpass");
	System.out.println(name);
		Connection con=null;
		PreparedStatement pstmt=null;
	
		try {
			con=ConnectDb.getConnection();
			pstmt=con.prepareStatement("select * from admin where name=? and password=?;" );
			pstmt.setString(1, name);
			pstmt.setString(2,pass);
		ResultSet rs=pstmt.executeQuery();
		HttpSession hs = request.getSession(true);
		if(hs==null){
			// Set to expire far in the past.
			  response.setHeader("Expires", "Sat, 6 May 1995 12:00:00 GMT");

			  // Set standard HTTP/1.1 no-cache headers.
			  response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");

			  // Set IE extended HTTP/1.1 no-cache headers (use addHeader).
			  response.addHeader("Cache-Control", "post-check=0, pre-check=0");

			  // Set standard HTTP/1.0 no-cache header.
			  response.setHeader("Pragma", "no-cache");

		}
		else{
	
		boolean flag=rs.next();
		if(flag){
				hs.setAttribute("admin_name", name);
				response.sendRedirect("adminhome.jsp");
			}
			else{
			response.sendRedirect("adminlogin.jsp");
				
			}
		} 
		}
		
		catch (Exception e) {
			// TODO Auto-generated catch block
			response.sendRedirect("errorpage.html");
			e.printStackTrace();
		}
		
	}
	}


