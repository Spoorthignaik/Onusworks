import java.sql.*;
public class SelectStudent
{
	public static void main(String[] args) throws Exception
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");
		Statement s=c.createStatement();
		ResultSet rs=s.executeQuery("select * from student");
		while(rs.next())
		{
		System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getString("branch"));
		}
		c.close();
	}
}
