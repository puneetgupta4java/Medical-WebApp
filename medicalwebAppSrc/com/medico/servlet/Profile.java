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
import java.util.ArrayList;
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

    public static ArrayList<String> extractappointment(int doctor_id,int patient_id){
        ArrayList<String> a = new ArrayList<String>();
        Connection con = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        if(patient_id == 0){
        try {
            con = ConnectDb.getConnection();
            System.out.print(doctor_id);
            psmt = con.prepareStatement("select time from appointment where Doctor_id=?;");
            psmt.setInt(1, doctor_id);
            rs = psmt.executeQuery();
             while(rs.next()){
                a.add(rs.getString("time"));
                System.out.print(rs.getString("time"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
       
    }
        else{
            try {
                con = ConnectDb.getConnection();
                psmt = con.prepareStatement("select time from appointment where Patient_id=?;");
                psmt.setInt(1, patient_id);
                rs = psmt.executeQuery();
                 while(rs.next()){
                a.add(rs.getString("time"));
                }
            } catch (Exception ex) {
                Logger.getLogger(Profile.class.getName()).log(Level.SEVERE, null, ex);
            }
          
        }
       
        return a;
    }
    
     
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
  
        HttpSession session1 = request.getSession(false);
        int patient_id=0,doctor_id=0;
        Connection con = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        String type = (String) session1.getAttribute("type");
         
        if(type == null){
           // System.out.print("i'm null");
            response.sendRedirect("login.jsp");
        }
        else if(type.equals("Doctor")){
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
                ArrayList<String> a = extractappointment(doctor_id,0);
                session1.setAttribute("appoint_doc", a);
                response.sendRedirect("profile.jsp");
            }  catch (Exception ex) {
                ex.printStackTrace();
                response.sendRedirect("errorpage.html");
            }
             
            }
        else{
           patient_id = (int) session1.getAttribute("Patient_id");
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
               ArrayList<String> a = extractappointment(0,patient_id);
               session1.setAttribute("pat_profile", p);
               session1.setAttribute("appoint_pat", a);
               response.sendRedirect("profile.jsp");
           }catch(Exception e){
               e.printStackTrace();
               response.sendRedirect("errorpage.html");
           }
        }
        
    }
    

}
