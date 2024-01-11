package com.example.sms;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;

@WebServlet("/insert")
public class StudentsAction extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		int id;
		String name,email,age,phone;
		
		id=Integer.parseInt(request.getParameter("s_id"));
		name=request.getParameter("s_name");
		email=request.getParameter("s_email");
		age=request.getParameter("s_age");
		phone=request.getParameter("s_phone");
		
		out.println("Id = "+id);
		out.println("Name = "+name);
		out.println("E-mail = "+email);
		out.println("age = "+age);
		out.println("Phone_No = "+phone);
		
	try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet", "yunus", "1234");
			PreparedStatement ps= c.prepareStatement("insert into registerdata values(?,?,?,?,?)");
			ps.setInt(1, id);
			ps.setString(2, name);
			ps.setString(3, email);
			ps.setString(4, age);
			ps.setString(5, phone);
			int i=ps.executeUpdate();
			
			if(i>0)
			{
				out.println("<h1>Student Sucessfully Added!</h1>");
				
			}
			else
			{
				out.println("<h4>Insert Operation Failed!</h4>");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
