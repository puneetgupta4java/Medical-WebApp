package com.medico.Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ResourceBundle;

import javax.servlet.http.HttpSession;

public class ConnectDb {
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
		Connection con=null;
		  String driverName="com.mysql.jdbc.Driver";
		   String url="jdbc:mysql://localhost:3306/medicalweb";
		   String userid = "root";
		   String pass = "root";
		Class.forName(driverName);
		con=DriverManager.getConnection(url,userid,pass);
		return con;
		
	
		
	}

}
