package com.onusworks.simple;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Servlet1")
public class Servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Servlet1() {
		super();

	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.getWriter().append("Served at: ").append(req.getContextPath());

		resp.setContentType("text/html");
		try (PrintWriter out = resp.getWriter()) {

			out.println("<!DOCTYPE html");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Servlet</title>");
			out.println("</head>");
			out.println("<body>");

			String name = req.getParameter("user_name");
			out.println("<h1>your name is " + name + "</h1>");
			out.println("<a href='Servlet2?user="+name+"'>Go to second servlet</a>");

			// hidden form field
			out.println("" + "<form action='Servlet2'>" + "<input type='hidden' name='user_name' value='" + name
					+ "' />" + "<button>Go to the second servlet</button>" + "" + "" + "</form>");

			out.println("</body>");
			out.println("</html>");

		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
