package com.medico.Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {
  

public static int validate(String Name,String Password,String data) throws ClassNotFoundException, SQLException{
	  
           int id = 0;
	Connection con = null;
	  try {
		 con = ConnectDb.getConnection();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
          if(data.equals("patient")){
	  PreparedStatement pstmt=con.prepareStatement("Select Patient_id from patient where Name=? and password=?;");
	  pstmt.setString(1,Name );
	  pstmt.setString(2,Password);
	  ResultSet rs=pstmt.executeQuery();
	  while(rs.next()){
            id = rs.getInt("Patient_id");
          }
         // System.out.print(id);
	return id;
          }
          else if(data.equals("doctor")){
              PreparedStatement pstmt=con.prepareStatement("Select Doctor_id from doctor where Name=? and password=?;");
	  pstmt.setString(1,Name );
	  pstmt.setString(2,Password);
	  ResultSet rs=pstmt.executeQuery();
	  while(rs.next()){
            id = rs.getInt("Doctor_id");
          }
              return id;
          }
          else{
              return 0;
          }
   }
}
