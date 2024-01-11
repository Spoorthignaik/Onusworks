package dao;
import java.sql.*;
import dto.userU;

public class userDaoU 
{
	public void UpdateUser(userU p) throws Exception 
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_management","root","root");
		PreparedStatement ps=c.prepareStatement("update user_management set id =?,name=?,email=?,country=? where id=?");
		ps.setInt(1, p.getId());
		ps.setString(2, p.getName());
		ps.setString(3, p.getEmail());
		ps.setString(4, p.getCountry());
		ps.setInt(5, p.getOldid());
		ps.execute();
		c.close();
	}

}
