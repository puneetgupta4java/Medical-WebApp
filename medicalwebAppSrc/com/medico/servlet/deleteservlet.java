package com.medico.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medico.Connection.ConnectDb;

/**
 * Servlet implementation class deleteservlet
 */
@WebServlet("/deleteservlet")
public class deleteservlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("patient_id");
		String id1=request.getParameter("doctor_id");
		HttpSession session=request.getSession(false);
		Connection con=null;
		PreparedStatement pstmt=null;
		if(session!=null){
		if(id==null&&id1==null){
			response.sendRedirect("adminlogin");
		}
		else if(id!=null&&id1==null){
		try {
			con=ConnectDb.getConnection();
			pstmt=con.prepareStatement("delete from patient where patient_id=?;");
			pstmt.setString(1, id);
			
		int flag=pstmt.executeUpdate();
		if(flag!=0){
			response.sendRedirect("deletesuccessfull.jsp");
		}
		else{
			response.sendRedirect("delete.jsp");
		}
		} 
		
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("errorpage.html");
		}
		}
		else if(id1!=null&&id==null){
			try {
				con=ConnectDb.getConnection();
				pstmt=con.prepareStatement("delete from doctor where Doctor_id=?;");
				pstmt.setString(1, id1);
				
				int flag=pstmt.executeUpdate();
				if(flag!=0){
					response.sendRedirect("deletesuccessfull.jsp");
				}
				else{
					response.sendRedirect("delete.jsp");
				}
			} 
			
			catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				response.sendRedirect("errorpage.html");
			}
			
			
		}
		}
		
		
		
	}

}
