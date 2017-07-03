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
 * Servlet implementation class articleformservlet
 */
@WebServlet("/articleformservlet")
public class articleformservlet extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
        HttpSession s = request.getSession(false);
		String img = (String)s.getAttribute("img");
        String name=request.getParameter("name");
        String type = request.getParameter("type");
        String date = request.getParameter("date");
        String descr = request.getParameter("descr");
        String full_descr = request.getParameter("full_descr");
       
        Connection con = null;
        PreparedStatement psmt = null;
        try{
            con = ConnectDb.getConnection();
            psmt = con.prepareStatement("insert into article(title,doctor_name,desrc,date,Image,full_descr,type)"
                    + " values(?,?,?,?,?,?,?);");
            psmt.setString(1, title);
            psmt.setString(2,name);
            psmt.setString(3, descr);
            psmt.setString(4,date);
            psmt.setString(5, img);
            psmt.setString(6,full_descr);
            psmt.setString(7,type);
           
            int a = psmt.executeUpdate();
            if(a!= 0)
                response.sendRedirect("articleservlet");
            else
                response.sendRedirect("articleform.jhsp");
        }catch(Exception e){
            e.printStackTrace();
            response.sendRedirect("errorpage.html");
        }
	}

}
