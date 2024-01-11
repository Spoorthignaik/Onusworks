package com.practice;

import java.io.IOException;
import java.io.PrintWriter;

import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterData
 */
@WebServlet("/RegisterData")
public class RegisterData extends HttpServlet 
	{
		
		private static final long serialVersionUID = 1L;
	       
	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public RegisterData() {
	        super();
	        // TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		PrintWriter out= resp.getWriter();
		resp.setContentType("text/html");
		resp.setCharacterEncoding("utf-8");
		
		String id,name,email,age,phno;
		
		id=req.getParameter("id");
		name=req.getParameter("name");
		email=req.getParameter("email");
		age=req.getParameter("age");
		phno=req.getParameter("phno");
		
		out.println("Id = "+id);
		out.println("<br>");
		out.println("Name = "+name);
		out.println("<br>");
		out.println("E-mail = "+email);
		out.println("<br>");
		out.println("Age = "+age);
		out.println("<br>");
		out.println("Phone No = "+phno);
		out.println("<br>");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet", "yunus", "1234");
			PreparedStatement ps= c.prepareStatement("insert into registerdata values(?,?,?,?,?)");
			ps.setString(1, id);
			ps.setString(2, name);
			ps.setString(3, email);
			ps.setString(4, age);
			ps.setString(5, phno);
			int i=ps.executeUpdate();
			
			if(i>0)
			{
				out.println("<h1>The Registered Data is Processing.........</h1>");
				
			}
			else
			{
				out.println("<h4>the data processing Failed..</h4>");
			}
					
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}
		
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}

}
