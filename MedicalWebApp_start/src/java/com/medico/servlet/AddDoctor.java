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
@WebServlet(urlPatterns = {"/AddDoctor"})
public class AddDoctor extends HttpServlet {

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
            String name = request.getParameter("Doctor_name");
            String qual = request.getParameter("Doctor_qual");
            String fees=request.getParameter("Doctor_fees");
            String add = request.getParameter("Doctor_add");
            String exp = request.getParameter("Doctor_exp");
            String type = request.getParameter("Doctor_type");
            String city = request.getParameter("Doctor_city");
            String phone=request.getParameter("Doctor_phn");
            String fdescr = request.getParameter("Doctor_descr");
            String descr = request.getParameter("Doctor_sh_descr");
            String email = request.getParameter("Doctor_email");
            String img = request.getParameter("Doctor_img");
            String time = request.getParameter("Doctor_time");
            Connection con = null;
            PreparedStatement psmt = null;
            try{
                con = ConnectDb.getConnection();
                psmt = con.prepareStatement("insert into doctor(Name,Qualification,INR,Address,Image,Experience,Type,City,ph_no,Full_Descr,Descr,email,time)"
                        + " values(?,?,?,?,?,?,?,?,?,?,?,?,?);");
                psmt.setString(1, name);
                psmt.setString(2,qual);
                psmt.setString(3, fees);
                psmt.setString(4,add);
                psmt.setString(5, img);
                psmt.setString(6,exp);
                psmt.setString(7,type);
                psmt.setString(8,city);
                psmt.setString(9,phone);
                psmt.setString(10,fdescr);
                psmt.setString(11,descr);
                psmt.setString(12,email);
                psmt.setString(13, time);
                int a = psmt.executeUpdate();
                if(a!= 0)
                    response.sendRedirect("index.jsp");
                else
                    response.sendRedirect("NewDoctor.jsp");
            }catch(Exception e){
                e.printStackTrace();
            }
    }
}
