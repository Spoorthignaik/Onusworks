package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dto.InsertBean;

public class SelectDao 
{
	public ResultSet LoginSelf(InsertBean b) 
	{
		ResultSet rs = null;
		PreparedStatement ps = null;
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/struts_crud", "root", "root");
		if(b.getId().equals("*")) {
			ps=c.prepareStatement("select * from details");
		}else {
			ps=c.prepareStatement("select * from details where id =?");
			ps.setString(1, b.getId());
		}
		
		rs=ps.executeQuery();
		if(rs.next()) 
			/*
			 * System.out.println(b.getId()); System.out.println(rs.getString(2));
			 */
		return rs;
		
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		//return rs;
		//ps.executeUpdate();
		return null;
	}

}
