package com.medico.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medico.Connection.ConnectDb;
import com.medico.pojo.articledto;

/**
 * Servlet implementation class articleservlet
 */
@WebServlet("/articleservlet")
public class articleservlet extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		articledao dao=new articledao();
		try {
			ArrayList<articledto> list=dao.getArticles();
			HttpSession session1 = request.getSession(false);
			for(articledto d : list){
				System.out.println(d.getDoctor_name());
				System.out.println(d.getImage());
			}
			session1.setAttribute("list", list);
			response.sendRedirect("article.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("errorpage.html");
		}
		
		
		
	}

}
