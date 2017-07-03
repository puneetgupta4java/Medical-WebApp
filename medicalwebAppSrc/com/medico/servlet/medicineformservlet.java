package com.medico.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medico.Connection.ConnectDb;

/**
 * Servlet implementation class medicineformservlet
 */
@WebServlet("/medicineformservlet")
public class medicineformservlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name= request.getParameter("med_name");
        String desc= request.getParameter("Desc");
        String effects=request.getParameter("side_effects");
        String dosage = request.getParameter("dosage");
        String not_use = request.getParameter("not_use");
        String disclaimer = request.getParameter("dis");
        
       
        Connection con = null;
        PreparedStatement psmt = null;
        try{
            con = ConnectDb.getConnection();
            psmt = con.prepareStatement("insert into medicine(name,desrc,side_effects,dosage,not_use,Disclaimer)"
                    + " values(?,?,?,?,?,?);");
            psmt.setString(1, name);
            psmt.setString(2,desc);
            psmt.setString(3, effects);
            psmt.setString(4,dosage);
            psmt.setString(5, not_use);
            psmt.setString(6,disclaimer);
          
           
            int a = psmt.executeUpdate();
            if(a!= 0)
                response.sendRedirect("profile.jsp");
            else
                response.sendRedirect("medicineform.jsp");
        }catch(Exception e){
            e.printStackTrace();
            response.sendRedirect("errorpage.html");
        }
	}
	}


