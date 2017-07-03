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

@WebServlet("/singlearticleservlet")
public class singlearticleservlet extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title=request.getParameter("title");
		System.out.println(title);
		try {
			ArrayList<articledto> list=singlearticledao.getArticles(title);
			HttpSession session1 = request.getSession(false);
			for(articledto d : list){
				System.out.println(d.getDoctor_name());
			}
			session1.setAttribute("art_title", title);
			session1.setAttribute("list", list);
			response.sendRedirect("singlearticle.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("errorpage.html");
		}
		
	}

}
