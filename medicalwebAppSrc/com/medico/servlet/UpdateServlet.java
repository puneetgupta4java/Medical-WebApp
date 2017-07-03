/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medico.servlet;

import com.medico.Connection.ConnectDb;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
@WebServlet(name = "UpdateServlet", urlPatterns = {"/UpdateServlet"})
public class UpdateServlet extends HttpServlet {

   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection con = null;
        PreparedStatement psmt = null;
        int patient_id=0,doctor_id=0,a=0;
        HttpSession s = request.getSession(false);
        String type = (String) s.getAttribute("type");
        String column = request.getParameter("column");
        System.out.print(column);
         String value = request.getParameter("value");
        if(type.equals("Doctor")){
             doctor_id = (int)s.getAttribute("Doctor_id");
        try{
            con = ConnectDb.getConnection();
            psmt = con.prepareStatement("update doctor set "+column+" = ? where Doctor_id=?;");
           
            psmt.setString(1, value);
            psmt.setInt(2, doctor_id);
            System.out.print(psmt);
            a = psmt.executeUpdate();
            if(a!=0){
                response.sendRedirect("Profile");
            }
            else{
                response.sendRedirect("404.html");
            }
        }catch(Exception e){
            e.printStackTrace();
            response.sendRedirect("errorpage.html");
        }
        }
         else{
           patient_id = (int) s.getAttribute("Patient_id");
           try{
               con = ConnectDb.getConnection();
               psmt = con.prepareStatement("update patient set "+column+" = ? where Patient_id = ?;");
               
               psmt.setString(1, value);
               psmt.setInt(2,patient_id);
              
                a = psmt.executeUpdate();
                    if(a!=0){
                        response.sendRedirect("Profile");
                    }
                     else{
                            response.sendRedirect("404.html");
                        }
           }catch(Exception e){
               e.printStackTrace();
               response.sendRedirect("errorpage.html");
           }
    }
    }
}
