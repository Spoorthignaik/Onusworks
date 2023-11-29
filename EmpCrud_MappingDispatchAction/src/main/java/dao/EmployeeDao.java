package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class EmployeeDao {

	public int register(int id, String name, String email, float salary) throws Exception {

		Class.forName("com.mysql.jdbc.Driver");

		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school", "root", "root");

		// querry
		String q = "insert into employe values(?,?,?,?)";

		PreparedStatement pstm = con.prepareStatement(q);
		pstm.setInt(1, id);
		pstm.setString(2, name);
		pstm.setString(3, email);
		pstm.setFloat(4, salary);

		int i = pstm.executeUpdate();
		return i;

	}

	public int update(int id, String name, String email, float salary) throws Exception {

		Class.forName("com.mysql.jdbc.Driver");

		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school", "root", "root");

		// querry
		String q = "update employee set name=?, email=?,address=?,salary=? where id=?)";

		PreparedStatement pstm = con.prepareStatement(q);
		
		pstm.setString(1, name);
		pstm.setString(2, email);
		pstm.setFloat(3, salary);
        pstm.setInt(4, id);
        
		int i = pstm.executeUpdate();
		return i;

	}
}