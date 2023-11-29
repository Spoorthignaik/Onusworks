package com.onusworks.simple;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Servlet2")
public class Servlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Servlet2() {
		super();

	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.getWriter().append("Served at: ").append(req.getContextPath());

		resp.setContentType("text/html");
		try (PrintWriter out = resp.getWriter()) {

			out.println("<!!DOCTYPE html");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Servlet</title>");
			out.println("</head>");
			out.println("<body>");

			out.println("<h1>Welcome to servlet2</h1>");
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
