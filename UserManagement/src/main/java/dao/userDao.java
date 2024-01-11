package dao;
import java.sql.*;

import dto.user;

public class userDao 
{
	public void insertUser(user p) throws Exception 
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_management","root","root");
		PreparedStatement ps=c.prepareStatement("insert into user_management values(?,?,?,?)");
		ps.setInt(1, p.getId());
		ps.setString(2, p.getName());
		ps.setString(3, p.getEmail());
		ps.setString(4, p.getCountry());
		ps.executeUpdate();
		c.close();
		
	}

}
