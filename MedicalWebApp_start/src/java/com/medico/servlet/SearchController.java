/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medico.servlet;

import com.medico.Connection.ConnectDb;
import com.medico.pojo.Doctor;
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
@WebServlet(name = "SearchController", urlPatterns = {"/SearchController"})
public class SearchController extends HttpServlet {

   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String type = request.getParameter("type");
            String location = request.getParameter("Location");
            ArrayList<Doctor> a = new ArrayList<Doctor>();
        try {
            System.out.print(type + location);
            Connection con = ConnectDb.getConnection();
            PreparedStatement psmt = con.prepareStatement("select * from doctor where type=? and city=?;");
            psmt.setString(1, type);
            psmt.setString(2, location);
            System.out.print(psmt);
            ResultSet rs = psmt.executeQuery();
            while(rs.next()){
                Doctor d = new Doctor();
                d.setId(rs.getInt("Doctor_id"));
                d.setName(rs.getString("Name"));
                d.setQual(rs.getString("Qualification"));
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
                a.add(d);
            }
            for(Doctor d : a){
                System.out.println(d.getName());
            }
            HttpSession session1 = request.getSession(false);
            session1.setAttribute("list", a);
            response.sendRedirect("Doctors_searched.jsp");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
            
      
    }
    
}
