package dao;

import java.sql.*;

public class InsertDao 
{
	public void Insert() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc", "yunus", "1234");
		PreparedStatement ps=c.prepareStatement("insert into student values(1,'raj',33)");
		ps.executeQuery();
		c.close();
	}
}
