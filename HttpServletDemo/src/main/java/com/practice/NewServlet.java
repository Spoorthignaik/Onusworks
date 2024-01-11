package com.practice;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.*;
import javax.servlet.http.*;

public class NewServlet extends HttpServlet 

{

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=resp.getWriter();
		out.println("<h4>These is Second Servlet </h2>");
		out.println("<h3>Be at Ease </h3>");
		
	}
	
	
}
