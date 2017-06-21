package com.medico.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medico.Connection.ConnectDb;
import com.medico.pojo.Doctor;
import com.medico.pojo.medicinedto;

/**
 * Servlet implementation class MedicineServlet
 */
@WebServlet("/MedicineServlet")
public class MedicineServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("search");
        
        ArrayList<medicinedto> mlist = new ArrayList<medicinedto>();
    try {
        
        Connection con = ConnectDb.getConnection();
        PreparedStatement psmt = con.prepareStatement("select * from medicine where name=?;");
        psmt.setString(1, name);
        
        
        ResultSet rs = psmt.executeQuery();
        while(rs.next()){
            medicinedto mdto=new medicinedto();
            mdto.setName(rs.getString("name"));
            mdto.setDescription(rs.getString("desrc"));
            mdto.setSide_effects(rs.getString("side_effects"));
            mdto.setDosage(rs.getString("dosage"));
            mdto.setNot_use(rs.getString("not_use"));
            mdto.setDisclaimer(rs.getString("Disclaimer"));
           
            mlist.add(mdto);
        }
        for(medicinedto mdto : mlist){
            System.out.println(mdto.getDisclaimer());
        }
        HttpSession session1 = request.getSession(false);
        session1.setAttribute("list", mlist);
        response.sendRedirect("Medicine.jsp");
    } catch (Exception ex) {
        ex.printStackTrace();
    }
        
  
}

	}


