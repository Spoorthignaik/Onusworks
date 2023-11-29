package com.onusworks.things;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Servlet22 extends HttpServlet{
	
	
	protected void ProcessRsquest(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		resp.setContentType("text/html");
		try (PrintWriter out = resp.getWriter()) {

			out.println("<!DOCTYPE html");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Servlet</title>");
			out.println("</head>");
			out.println("<body>");

			//getting cookies
			Cookie cookies[] = req.getCookies();
			boolean f = false;
			String name = "";
			if (cookies == null) {
				out.println("<h1>you are new user , go to home page and register your name </h1>");
				return;
			} else {

				// to fetch the cookies value
				for (Cookie c : cookies) {
					String tname = c.getName();
					if (tname.equals("user_name")) {
						f = true;
						name = c.getValue();
					}
				}

			}

			if (f) {
				out.println("<h1>Hello," + name + "welcome back to my website....</h1>");
				out.println("<h1><a href='servlet2'>Thank You</a></h1>");
			} else {
				out.println("<h1>you are new user , go to home page and register your name </h1>");
			}

			out.println("</body>");
			out.println("</html>");

		}

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ProcessRsquest(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ProcessRsquest(req, resp);
	}

	@Override
	protected void service(HttpServletRequest req	, HttpServletResponse resp) throws ServletException, IOException {
		ProcessRsquest(req, resp);
	}
	
	@Override
	public void destroy() {
		
		super.destroy();
	}

}
