package com.onusworks.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public OrderServlet() {
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
            System.out.println("Order Servlet");
			out.println("<!!DOCTYPE html");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Order Servlet</title>");
			out.println("</head>");
			out.println("<body>");

			out.println("<h1>Welcome to Order Servlet Page</h1>");
			out.println("<h1>This is Profile Page"+req.getContextPath()+"</h1>");
		
			out.println("</body>");
			out.println("</html>");

		}
	}

}
