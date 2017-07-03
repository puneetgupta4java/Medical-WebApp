package com.medico.servlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.medico.Connection.ConnectDb;
import com.medico.pojo.articledto;

public class article2dao {
	public static ArrayList getArticles(String type) throws SQLException, ClassNotFoundException{
		Connection con=null;
		PreparedStatement pstmt=null;
		ArrayList<articledto> alist=new ArrayList<articledto>();
		
		try {
			con=ConnectDb.getConnection();
			System.out.println("hii");
			pstmt=con.prepareStatement("select image,date,desrc,title,doctor_name,type from article where type=?;");
			pstmt.setString(1, type);
			System.out.println(pstmt);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				
				articledto dto=new articledto();
				dto.setType( rs.getString("type"));
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
		for(articledto a : alist)
			System.out.println(a.getDoctor_name());
		
		return alist;
	}		

}
