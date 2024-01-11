import java.sql.*;
public class DeleteQuery
{
	public static void main(String[] args) throws Exception
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");
		Statement s=c.createStatement();
		s.execute("delete from student where id = 23");
		System.out.println("student details deleted");
		c.close();
	}
}
