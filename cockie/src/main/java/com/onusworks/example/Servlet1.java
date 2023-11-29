package com.onusworks.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Servlet1 extends HttpServlet{
	
	protected void ProcessRsquest(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException {
		
		resp.setContentType("text/html");
		try(PrintWriter out=resp.getWriter()) {
			
			out.println("<!!DOCTYPE html");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Servlet</title>");
			out.println("</head>");
			out.println("<body>");
			
			String name =req.getParameter("name");
			out.println("<h1>Hello,"+name+"welcome to my website....</h1>");
			out.println("<h1><a href='servlet2'>Go to servlet 2</a></h1>");
			
			Cookie c=new Cookie("user_name", name);
			resp.addCookie(c);
			
			out.println("</body>");
			out.println("</html>");
			
		}
		
	}

}
