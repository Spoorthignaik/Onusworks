package controller;

import java.io.IOException;


import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDao;
import dto.Login;
import dto.user;

@WebServlet("/login")
public class LoginUser extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String user_name=req.getParameter("user_name");
		String password=req.getParameter("password");
		
	
		Login p = new Login(user_name,password);
		/*
		 * p.setUser_name(); p.setPassword(password);
		 */
		LoginDao dao=new LoginDao();
		try 
		{
			user u = dao.LoginUser(p);
			
			if(u != null) {
				System.out.println("User Found!");
				HttpSession session = req.getSession();
				session.setAttribute("username",u.getName());
				req.getRequestDispatcher("AllUser.jsp").forward(req, resp);
			}else {
				System.out.println("User Not Found!");
				req.getRequestDispatcher("Login.jsp").forward(req, resp);
			}
		} catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

		