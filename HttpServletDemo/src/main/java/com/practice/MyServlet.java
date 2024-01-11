package com.practice;

import java.io.IOException;


import java.io.PrintWriter;

import javax.servlet.*;
import javax.servlet.http.*;

public class MyServlet extends HttpServlet 

{
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=resp.getWriter();
		out.println("<h1>Hello welcome to the Http Servlet</h1>");
		
//		resp.sendRedirect("NewServlet");
	}		
	
}
