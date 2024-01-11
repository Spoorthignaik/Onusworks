package com.servlets;

import java.io.PrintWriter;
import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FirstServlet extends HttpServlet

{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String name = request.getParameter("name");
		
		PrintWriter out = response.getWriter();
		out.println("Welcome "+ name);
		
	}
}
