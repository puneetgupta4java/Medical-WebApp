/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medico.servlet;

//import com.medico.pojo.SendEmail;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medico.Connection.ConnectDb;
import com.medico.pojo.SendEmail;

/**
 *
 * @author puneet gupta
 */
@WebServlet(name = "Appointment", urlPatterns = {"/Appointment"})
public class Appointment extends HttpServlet {

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        HttpSession session1 = request.getSession(false);
        int patient_id = 0;
                
        if(session1.getAttribute("Patient_id") == null || (int)session1.getAttribute("Patient_id") == 0){
            System.out.print(patient_id);
            response.sendRedirect("login.jsp");
        }
            
        else{
            patient_id = (int)session1.getAttribute("Patient_id");
            System.out.print(patient_id);
        int doctor_id = Integer.parseInt(request.getParameter("Doctor_id"));
        String time = request.getParameter("alloted_time");
        System.out.print(time + doctor_id);
        Connection con = null;
        PreparedStatement psmt = null;
        try{
            con = ConnectDb.getConnection();
            psmt = con.prepareStatement("insert into appointment values(?,?,?);");
            psmt.setInt(1, patient_id);
            psmt.setInt(2, doctor_id);
            psmt.setString(3, time);
            int rs = psmt.executeUpdate();
            if(rs != 0){
                 	
            String email = null;
            	Connection con1 = null;
                PreparedStatement psmt1 = null;
                try{
                    con1 = ConnectDb.getConnection();
                    psmt1 = con1.prepareStatement("select email from  patient where patient_id=? ;");
                    psmt1.setInt(1, patient_id);
                   ResultSet rs1=psmt1.executeQuery();
                   while(rs1.next()){
                   email=rs1.getString("email");
                   }
            	SendEmail.email( email,"","","appointment",time);
                response.sendRedirect("index.jsp");
            
                
            }catch(Exception e){
            	e.printStackTrace();
            	response.sendRedirect("errorpage.html");
            }
        
            }
        
            else
                response.sendRedirect("Single_doctor.jsp");
        }catch(Exception e){
            e.printStackTrace();
            response.sendRedirect("errorpage.html");
        }
    
    }
    }
   
}
