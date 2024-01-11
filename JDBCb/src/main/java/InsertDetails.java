

import java.sql.*;
public class InsertDetails
{
	public static void main(String[] args) throws Exception
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/person", "yunus", "1234");
		Statement s=c.createStatement();
		s.execute("insert into person avalues(1,'asd','eee')");
		System.out.println("student details inserted");
		c.close();
		
	}
}
