package com.medico.servlet;

//import com.medico.pojo.SendEmail;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medico.Connection.ConnectDb;
import com.medico.pojo.SendEmail;



/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("username");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String gender=request.getParameter("gender");
		String id=request.getParameter("id");
		System.out.println(name + email + pass + gender);
		Connection con=null;
	try{
	 con = ConnectDb.getConnection();
		PreparedStatement pstmt=con.prepareStatement("insert into patient(Name,Password,Gender,email) values(?,?,?,?);");
		pstmt.setString(1, name);
		pstmt.setString(2, pass);
		pstmt.setString(3,gender);
		pstmt.setString(4,email);
		int a =pstmt.executeUpdate();
                
                  if(a!=0){
			SendEmail.email(email,name,pass,"register","0");
		}
  
                    response.sendRedirect("login.jsp");
                
                
		
	} catch (SQLException | ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		response.sendRedirect("errorpage.html");
	}

		
	}
	
}
