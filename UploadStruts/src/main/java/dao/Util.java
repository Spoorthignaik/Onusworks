package dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class Util {
	
	private static Connection connection = null;
	
	public static Connection getConnection()
	{
		if(connection!=null)
		{
			return connection;
		}
		else
		{
			Properties prop =new Properties();
			InputStream inputstream = Util.class.getClassLoader().getResourceAsStream("/db.properties");
			try {
				prop.load(inputstream);
				String driver=prop.getProperty("driver");
				String url=prop.getProperty("url");
				String user=prop.getProperty("user");
				String pass=prop.getProperty("pass");
				Class.forName(driver);
				connection =DriverManager.getConnection(url, user, pass);
			} 
			catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			 catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return connection;
		}
		
		
	}
}
