package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dto.InsertBean;

public class DeleteDao 
{
	public void LoginSelf(InsertBean b) throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/struts_crud", "yunus", "1234");
		PreparedStatement ps=c.prepareStatement("delete from details where id=?");
		ps.setString(1, b.getId());
		ps.executeUpdate();
		
	}

}
