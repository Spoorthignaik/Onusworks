package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dto.LoginBean;

//import org.apache.struts.action.ActionServlet;
public class LoginDao 
{
	public boolean LoginSelf(LoginBean b) throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/strutslogin", "root", "root");
		PreparedStatement ps=c.prepareStatement("select * from logindata where email = ? and password = ?");
		ps.setString(1, b.getEmail());
		ps.setString(2, b.getPassword());
		ResultSet rs= ps.executeQuery();
		if(rs.next())
			return true;
		else 
			return false;
	}
}
