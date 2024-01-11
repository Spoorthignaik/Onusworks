package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dto.InsertBean;

public class UpdateDao 
{
	public void LoginSelf(InsertBean b) throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/struts_crud", "root", "root");
		PreparedStatement ps=c.prepareStatement("update details set id =?,name=?,email=?,place=?,age=?,pincode=? where id=?");
		ps.setString(1, b.getId());
		ps.setString(2, b.getName());
		ps.setString(3, b.getEmail());
		ps.setString(4, b.getPlace());
		ps.setString(5, b.getAge());
		ps.setString(6, b.getPincode());
		ps.setString(7, b.getOldid());
		ps.executeUpdate();
		
	}

}
