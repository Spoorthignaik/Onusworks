package com.onusworks.simple;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		resp.setContentType("text/html");
		
		PrintWriter out=resp.getWriter();
		out.println("<h2>Welcome to Register Servlet</h2>");
		
		
		String name=req.getParameter("User_Name");
		String password=req.getParameter("User_Password");
		String email=req.getParameter("User_email");
		String gender=req.getParameter("User_Gender");
		String course=req.getParameter("User_course");
		String cond=req.getParameter("condition");
		
		if(cond!=null) {	
		if(cond.equals("checked")) {
			out.println("<h2> Name :"+name+"</h2>");
			out.println("<h2> Password :"+password+"</h2>");
			out.println("<h2> Email :"+email+"</h2>");
			out.println("<h2> Gender :"+gender+"</h2>");
			out.println("<h2> Course :"+course+"</h2>");
			
			RequestDispatcher rd=req.getRequestDispatcher("success");
			rd.forward(req,resp);
			
		}else {
			out.println("<h2>you have not accepted terms and condition</h2>");
		   }	
		}
		else {
			out.println("<h2>you have not accepted terms and condition...</h2>");
			
			// get the objects of dispatcher servlet
			
			RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
			rd.include(req,resp);
		}
	}

}
