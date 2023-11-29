package com.onusworks.examples;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class FirstServlet extends GenericServlet{

	@Override
	public void service(ServletRequest req, ServletResponse resp) throws ServletException, IOException {
     System.out.println("generation generic servlet");	
     resp.setContentType("text/html");
     PrintWriter out=resp.getWriter();
     out.println("This is the first servlet using the generic servlet");
     
	}
	
	

}
