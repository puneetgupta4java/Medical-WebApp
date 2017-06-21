/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medico.servlet;

import com.medico.Connection.ConnectDb;
import com.medico.pojo.Doctor;
import com.medico.pojo.Patient;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "Profile", urlPatterns = {"/Profile"})
public class Profile extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
  
        HttpSession session1 = request.getSession(false);
        int patient_id=0,doctor_id=0;
        Connection con = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        if((session1.getAttribute("Patient_id") == null || (int)session1.getAttribute("Patient_id") == 0)&&(session1.getAttribute("Doctor_id") == null || (int)session1.getAttribute("Doctor_id") == 0)){
            System.out.print(patient_id + doctor_id);
            response.sendRedirect("login.jsp");
        }
        else if(session1.getAttribute("Patient_id") == null || (int)session1.getAttribute("Patient_id") == 0){
             doctor_id = (int)session1.getAttribute("Doctor_id");
            try {
                con = ConnectDb.getConnection();
                psmt = con.prepareStatement("select * from doctor where Doctor_id=?;");
                psmt.setInt(1, doctor_id);
                rs = psmt.executeQuery();
             Doctor d = new Doctor();
            while(rs.next()){
                d.setName(rs.getString("Name"));
                d.setQual(rs.getString("Qualification").toUpperCase());
                d.setFees(rs.getString("INR"));
                d.setAddress(rs.getString("Address"));
                d.setImg(rs.getString("image"));
                d.setCity(rs.getString("City"));
                d.setExp(rs.getString("Experience"));
                d.setType(rs.getString("Type"));
                d.setFdescr(rs.getString("Full_Descr"));
                d.setDescr(rs.getString("Descr"));
                d.setPhn(rs.getString("ph_no"));
                d.setFeedback(rs.getString("Feedback"));
                d.setEmail(rs.getString("email"));
                d.setTimings(rs.getString("time"));
            }
                session1.setAttribute("doc_profile", d);
            }  catch (Exception ex) {
                ex.printStackTrace();
            }
             
            }
        else{
           patient_id = (int)request.getAttribute("Patient_id");
           try{
               con = ConnectDb.getConnection();
               psmt = con.prepareStatement("select * from patient where Patient_id=?");
               psmt.setInt(1,patient_id);
               rs = psmt.executeQuery();
                Patient p = new Patient();
               while(rs.next()){
                   p.setName(rs.getString("Name"));
                   p.setEmail(rs.getString("email"));
                   p.setGender(rs.getString("Gender"));
                   p.setPassword(rs.getString("Password"));
               }
               session1.setAttribute("pat_profile", p);
           }catch(Exception e){
               e.printStackTrace();
           }
        }
        response.sendRedirect("profile.jsp");
    }
    

}
