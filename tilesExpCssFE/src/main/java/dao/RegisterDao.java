package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dto.RegisterBean;

public class RegisterDao 
{
	public void LoginSelf(RegisterBean b) throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "root");
		PreparedStatement ps=c.prepareStatement("insert into login values(?,?) ");
		ps.setString(1, b.getUsername());
		ps.setString(2, b.getPassword());
		ps.executeUpdate();
		
	}

}
