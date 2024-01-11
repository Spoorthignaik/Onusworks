package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import dto.user;
import dto.Login;


public class LoginDao 
{
	public LoginDao(){}
	
	public user LoginUser(Login p) throws Exception
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_management","root","root");
		PreparedStatement ps=c.prepareStatement("select * from user_management where email = ? and password = ?");
		ps.setString(1, p.getUser_name());
		// Just to print and to verify whether the object is responding or not
		System.out.println("Username = "+p.getUser_name());
		System.out.println("Password = "+p.getPassword());
		ps.setString(2, p.getPassword());
		ResultSet rs = ps.executeQuery();
		user u = null;
		if(rs.next()) {
			u = new user (rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
			if (u!=null) System.out.println("User Found In DAO!");
		}
		
		c.close();
		return u;
	}

}
