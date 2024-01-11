

import java.sql.*;
public class Insert2ndDetails
{
	public static void main(String[] args) throws Exception
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");
		Statement s=c.createStatement();
		s.execute("insert into student values(2,'vit','mech')");
		System.out.println("student details inserted");
		c.close();
		
	}
}
