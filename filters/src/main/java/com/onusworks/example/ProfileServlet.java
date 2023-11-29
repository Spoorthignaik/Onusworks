package com.onusworks.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.getWriter().append("Served at: ").append(req.getContextPath());
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
		
		resp.setContentType("text/html");
		try (PrintWriter out = resp.getWriter()) {

			System.out.println("Profile Servlet Executed");
			out.println("<!!DOCTYPE html");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Filter Page</title>");
			out.println("</head>");
			out.println("<body>");

			out.println("<h1>Welcome to Profile Page</h1>");
			out.println("<h1>This is Profile Page</h1>");
			String name = req.getParameter("user_name");
			out.println("<h1 style='color:blue'>your name is " + name + "</h1>");
			// url rewrite
			// <a href="nextPage?sessionID=abc123">Next Page</a>
			out.println("<a href='Servlet2?user=" + name + "'> servlet 2</a>");
			out.println("<h1 style='color:red'>Welcome back to servlet2 " + name + "</h1>");

			out.println("</body>");
			out.println("</html>");

		}
	}

}
