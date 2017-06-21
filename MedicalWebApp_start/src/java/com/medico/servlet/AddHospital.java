/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.medico.Connection.ConnectDb;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author puneet gupta
 */
@WebServlet(urlPatterns = {"/AddHospital"})
public class AddHospital extends HttpServlet {

 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String name = request.getParameter("hospital_name");
        String add = request.getParameter("hospital_add");
        String city = request.getParameter("hospital_city");
        String doctor_id = request.getParameter("hospital_doc_id");
        String email = request.getParameter("hospital_email");
        String img = request.getParameter("hospital_img");
        Connection con = null;
               PreparedStatement pstmt = null;
               try
        {

        con=ConnectDb.getConnection();
        pstmt=con.prepareStatement("insert into hospital(Name,Address,City,Doctor_id,image,email) values(?,?,?,?,?,?);");
        pstmt.setString(1, name);
         pstmt.setString(2, add);
         pstmt.setString(3, city);
          pstmt.setString(4, doctor_id);
           pstmt.setString(6, email);
            pstmt.setString(5, img);
           int Status= pstmt.executeUpdate();
           if(Status==0)
           {
               response.sendRedirect("NewHospital.jsp");
           }
           else{
               response.sendRedirect("index.html");
               
           }
         
         
      
                
        }
               catch(Exception e){
                   
               }
        
    }

}
