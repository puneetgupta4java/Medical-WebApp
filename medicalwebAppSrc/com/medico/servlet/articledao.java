package com.medico.servlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.medico.Connection.ConnectDb;
import com.medico.pojo.articledto;

public class articledao {
	public static ArrayList getArticles() throws SQLException, ClassNotFoundException{
		Connection con=null;
		PreparedStatement pstmt=null;
		ArrayList<articledto> alist=new ArrayList<articledto>();
		
		try {
			con=ConnectDb.getConnection();
			pstmt=con.prepareStatement("select image,date,desrc,title,doctor_name from article where date BETWEEN DATE_SUB(NOW(), INTERVAL 60 DAY) AND NOW()  ;");
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				articledto dto=new articledto();
			   dto.setImage(rs.getString("image"));
		       dto.setDate(rs.getString("date"));
		       dto.setDescription(rs.getString("desrc"));
		       dto.setTitle(rs.getString("title"));
		       dto.setDoctor_name(rs.getString("doctor_name"));
		       alist.add(dto);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		} 
		
		
		return alist;
		

}
}
