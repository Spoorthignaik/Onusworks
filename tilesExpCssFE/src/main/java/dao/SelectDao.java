package dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.InsertBean;

public class SelectDao 
{
	public ResultSet LoginSelf(InsertBean b,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException 
	{
		ResultSet rs = null;
		PreparedStatement ps = null;
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/struts_crud", "root", "root");
		if(b.getId().equals("")) {
			RequestDispatcher rd1= request.getRequestDispatcher("error.jsp");
			rd1.include(request, response);
		}else {
			ps=c.prepareStatement("select * from details where id =?");
			ps.setString(1, b.getId());
		}
		
		rs=ps.executeQuery();
		while(rs.next()) 
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
