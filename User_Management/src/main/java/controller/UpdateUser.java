package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import dao.userDaoU;
import dto.userU;

public class UpdateUser extends GenericServlet
{

	@Override
	public void service(ServletRequest req, ServletResponse resp) throws ServletException, IOException 
	{
		int oldid=Integer.parseInt(req.getParameter("oldid"));
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String country=req.getParameter("country");
		String password=req.getParameter("password");
		
		userU p=new userU();
		p.setOldid(oldid);
		p.setId(id);
		p.setName(name);
		p.setEmail(email);
		p.setCountry(country);
		p.setPassword(password);
		
		userDaoU dao=new userDaoU();
		
		try 
		{
			dao.UpdateUser(p);
		} 
		
		catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		PrintWriter out= resp.getWriter();
		out.println("<h1>your data has been Updated Succesfully...........</h1> ");
		out.println("<br>");
		out.println("<html><head><body background=\"image9.jpg\" style=\"background-repeat: no-repeat; background-size:100%; background-size: cover;\">");
		out.print("<div style=background color: aquamarine;>\r\n"+" <table border=\"1\" cellpadding=\"5\">"
				+ "            <caption><h2>List of Users</h2></caption>\r\n"
				+ "            <tr>\r\n"
				+ "				   <th>Old Id</th>\r\n"
				+ "                <th>Id</th>\r\n"
				+ "                <th>Name</th>\r\n"
				+ "                <th>Email</th>\r\n"
				+ "                <th>Country</th>\r\n"
				+ "                <th>Password</th>\r\n"
				+ "                "
				+ "            </tr>\r\n"
				+ "            \r\n"
				+ "        \r\n"
				+ "   ");
		
		out.print("<tr>");
		out.println("<td>"+p.getOldid());
		out.println("</td>");
		out.println("<td>"+p.getId());
		out.println("</td>");
		out.println("<td>"+p.getName()); 
		out.println("</td>");
		out.println("<td>"+p.getEmail());
		out.println("</td>");
		out.println("<td>"+p.getCountry());
		out.println("</td>");
		out.println("<td>"+p.getPassword());
		out.println("</td></tr>");
		out.print("</table></div>");
		out.println("</body></head></html>");			
		
		out.println("<br><br>");
		out.println("<h3>Please Ensure to check the DataBase in Mysql Server</h3>");

		RequestDispatcher rd1= req.getRequestDispatcher("RedirectHome.jsp");
		rd1.include(req, resp);

				}

}
