package com.medico.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medico.pojo.articledto;

/**
 * Servlet implementation class article2servlet
 */
@WebServlet("/article2servlet")
public class article2servlet extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type=request.getParameter("type");
		System.out.println(type);
		try {
			ArrayList<articledto> list=article2dao.getArticles(type);
			HttpSession session1 = request.getSession(false);
			for(articledto d : list){
				System.out.println(d.getDoctor_name());
			}
			session1.setAttribute("art_type", type);
			session1.setAttribute("list", list);
			response.sendRedirect("article2.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("errorpage.html");
		}
		
		
		
	}
		

}
