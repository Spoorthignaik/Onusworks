package com.onusworks.examples;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DoGetMethod extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
		System.out.println("do get method is running......");
		
		resp.setContentType("text/html");
		PrintWriter writer=resp.getWriter();
		writer.println("<h1>This is do get method.......</h1>");
		
		writer.println(new Date().toString());
		
	
	}

	
}
