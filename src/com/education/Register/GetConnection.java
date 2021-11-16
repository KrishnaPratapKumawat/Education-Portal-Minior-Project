package com.education.Register;

import java.sql.*;

public class GetConnection {
	static Connection con;
	
	private  GetConnection()
	{}
	public static Connection getConnection()
	{
		try
		{
			if(con==null) {
			Class.forName("com.mysql.jdbc.Driver");  
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/educationportal","root",""); }
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}

}
