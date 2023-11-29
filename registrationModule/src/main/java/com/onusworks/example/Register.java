package com.onusworks.example;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class Register extends HttpServlet {



	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html");
		try (PrintWriter out = resp.getWriter()) {

		

			// getting all the incoming details from the server
			String name = req.getParameter("user_name");
			String password = req.getParameter("user_password");
			String email = req.getParameter("user_email");

			
			// CONNECTION(jdbc)
			try {

				Thread.sleep(2000);

				Class.forName("com.mysql.jdbc.Driver");
																			//url  , user  , password
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school", "root", "root");

				// querry
				String q = "insert into reg_table(name,password,email) values(?,?,?)";

				PreparedStatement pstm = con.prepareStatement(q);
				pstm.setString(1, name);
				pstm.setString(2, password);
				pstm.setString(3, email); // par index and value

				pstm.executeUpdate();
				out.println("complete");



			} catch (Exception e) {
				e.printStackTrace();
				out.println("error");
			}

		}
	}

}
