package com.medico.Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {
  

public static int validate(String Name,String Password,String data) throws ClassNotFoundException, SQLException{
	  
           int id = 0;
        //   System.out.print(data);
	Connection con = null;
	  try {
		 con = ConnectDb.getConnection();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
          if(data.equals("Patient")){
         //     System.out.println("Patient login");
	  PreparedStatement pstmt=con.prepareStatement("Select Patient_id from patient where Name=? and password=?;");
	  pstmt.setString(1,Name);
	  pstmt.setString(2,Password);
          // System.out.println("hii,i'm patient");
          // System.out.println(pstmt);
	  ResultSet rs=pstmt.executeQuery();
	  while(rs.next()){
            id = rs.getInt("Patient_id");
          }
         // System.out.print(id);
	
          }
          else if(data.equals("Doctor")){
              // System.out.println("Doctor login");
              PreparedStatement pstmt=con.prepareStatement("Select Doctor_id from doctor where Name=? and password=?;");
	  pstmt.setString(1,Name );
	  pstmt.setString(2,Password);
         //  System.out.println("hii,i'm doctor" + pstmt);
	  ResultSet rs=pstmt.executeQuery();
	  while(rs.next()){
            id = rs.getInt("Doctor_id");
          }
              
          }
          else{
              id = 0 ;
          }
        //  System.out.print(id);
          return id;
   }
}
