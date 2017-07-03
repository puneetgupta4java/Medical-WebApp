/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medico.servlet;

import com.medico.Connection.LoginDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author puneet gupta
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    //  System.out.print("hii");
    String type = request.getParameter("type");
        String name=request.getParameter("username");
		String pass=request.getParameter("pass");
                
		//System.out.println(type);
		try {
                    int id = LoginDao.validate(name,pass,type);
                if(id != 0){
                    HttpSession session1 = request.getSession(false);
                     String pn = (String)session1.getAttribute("pn");

                    if(type.equals("Patient")){
                       
                        session1.setAttribute("Patient_id",id);
                        System.out.print(id);
                    }
                    else {
                        
                        session1.setAttribute("Doctor_id", id);
                    }
                    session1.setAttribute("type", type);
                    response.sendRedirect(pn);
                }
                else{
                    RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
                    rd.include(request, response);
                    
                }
                } catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("errorpage.html");
		}
        
    }

}
