import java.sql.*;
public class updateDetails
{
	public static void main(String[] args) throws Exception
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");
		Statement s=c.createStatement();
		s.execute("update student set name = 'mar' , branch = 'cse' where id=1");
		System.out.println("student details updated");
		c.close();
		
	}
}
