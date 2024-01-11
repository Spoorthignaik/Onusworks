

import java.sql.*;
import java.util.Scanner;
public class PrepareStatement
{
	

	public void InsertStudent() throws Exception
	{
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter the Student Id,Name and Branch");
		int id=sc.nextInt();
		String name=sc.next();
		String branch=sc.next();
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");
		PreparedStatement ps=c.prepareStatement("insert into student values(?,?,?)");
		ps.setInt(1, id);
		ps.setString(2, name);
		ps.setString(3, branch);
		ps.execute();
		System.out.println("student details Updated");
		c.close();
		
	}
}
