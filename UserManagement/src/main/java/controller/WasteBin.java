//
//package dao;
//
//import java.io.PrintWriter;
//import java.io.IOException;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//
//import javax.servlet.ServletRequest;
//import javax.servlet.ServletResponse;
//
//import javax.servlet.GenericServlet;
//
//import dto.PersonS;
//
//public class PersonDaoS 
//{
//
//	public ResultSet  selectPerson(ServletRequest req, ServletResponse resp, PersonS p) throws Exception
//	{
//		
//		Class.forName("com.mysql.cj.jdbc.Driver");
//		Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/person", "yunus", "1234");
//		//PreparedStatement ps=c.prepareStatement("select id,name,age from person where id=?");
//		PreparedStatement ps=c.prepareStatement("SELECT * FROM person");
//		//System.out.print("id = " + p.getId());
//		//ps.setInt(1, p.getId());
//		PrintWriter out=resp.getWriter();
//		
//		ResultSet rs=ps.executeQuery();
//		
//		out.println("<h1>The Data Retrieval is Succesfull</h1>");
//		out.println("<h4>The values are</h4>");
//		while(rs.next())
//		{
//			out.println("Id =  "+rs.getInt(1));
//			out.println("<br><br>");
//			out.println("Name =  "+rs.getString(2)); 
//			out.println("<br><br>");
//			out.println("Age =  "+rs.getInt(3));
//			out.println("<br>");
//			out.println("------------------------");
//			out.println("<br><br>");
//		}
//		c.close();	
//		return rs;
//	}
//}
//
//====================================
//
//
//package controller;
//
//import java.io.IOException;
//
//
//import javax.servlet.GenericServlet;
//import javax.servlet.ServletRequest;
//import javax.servlet.ServletResponse;
//
//import dao.PersonDaoS;
//import dto.PersonS;
//
//
//public class SelectPerson extends GenericServlet
//
//{
//	public void service(ServletRequest req,ServletResponse resp) throws IOException 
//	{
//		int id= Integer.parseInt(req.getParameter("id"));
//		
//		PersonS p=new PersonS();
//		p.setId(id);
//		
//		PersonDaoS dao=new PersonDaoS();
//		try {
//			dao.selectPerson(req,resp,p);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		
//		
//	}
//	
//
//}
