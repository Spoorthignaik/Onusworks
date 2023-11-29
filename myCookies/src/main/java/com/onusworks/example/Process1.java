package com.onusworks.example;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Process1")
public class Process1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Process1() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		response.setContentType("text/html");

		String uname = request.getParameter("uname");
		String subj = request.getParameter("subj");

		// creating cookie

		Cookie cref1 = new Cookie("ckname", uname);
		Cookie cref2 = new Cookie("csubj", subj); // name and value

		cref1.setMaxAge(365 * 24 * 60 * 60);
		response.addCookie(cref1);

		cref2.setMaxAge(365 * 24 * 60 * 60);
		response.addCookie(cref2);

		RequestDispatcher rd = request.getRequestDispatcher("Process2");
		rd.forward(request, response);

	}

}
