
package dao;

import java.io.PrintWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import javax.servlet.GenericServlet;

import dto.userS;

public class userDaoS 
{

	public ResultSet  selectUser(userS p) throws Exception
	{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/user_management", "root", "root");
		PreparedStatement ps;
		if(p.getId().equals("")) {
			ps=c.prepareStatement("select * from user_management");
		}else {
			ps=c.prepareStatement("select * from user_management where id=?");
			ps.setString(1, p.getId());
		}
//		PreparedStatement ps=c.prepareStatement("SELECT * FROM user_management");
		//System.out.print("id = " + p.getId());
		
		ResultSet rs=ps.executeQuery();
		
		return rs;
	}
}

