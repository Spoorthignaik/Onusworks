package dao;

import dto.userD;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class userDaoD 
{
	public void DeleteUser(userD p) throws Exception
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c=  DriverManager.getConnection("jdbc:mysql://localhost:3306/user_management", "root", "root");
		PreparedStatement ps=c.prepareStatement("delete from user_management where id=?");
		ps.setInt(1,p.getId());
		ps.execute();
		c.close();
	}
	

	
}
