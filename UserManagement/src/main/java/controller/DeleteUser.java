package controller;

import dto.userD;
import dao.userDaoD;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class DeleteUser extends GenericServlet
{
	public void service (ServletRequest req,ServletResponse resp) throws IOException,ServletException
	{
		int id=Integer.parseInt(req.getParameter("id"));
		
		userD p=new userD();
		p.setId(id);
		
		userDaoD dao= new userDaoD();
		try 
		{
			dao.DeleteUser(p);
		}
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		PrintWriter out=resp.getWriter();
		out.println("<h1> the User for ID ="+p.getId()+ " has been deleted...........</h1> ");
		out.println("<br>");
		
		out.println("<html><head><body background=\"image8.jpg\" style=\"background-repeat: no-repeat; background-size:100%; background-size: cover;\">");
		out.print("<div style=background color: aquamarine;>\r\n"+" <table border=\"1\" cellpadding=\"5\">"
				+ "            <caption><h2>List of Users</h2></caption>\r\n"
				+ "            <tr>\r\n"
				+ "                <th>Id</th>\r\n"
				+ "                "
				+ "            </tr>\r\n"
				+ "            \r\n"
				+ "        \r\n"
				+ "   ");
		
		out.print("<tr>");
		out.println("<td>"+p.getId());
		out.println("</td></tr>");
		
		out.print("</table></div>");
		out.println("</body></head></html>");			
		
		out.println("<br><br>");
		out.println("<h3>Please Ensure to check the DataBase in Mysql Server</h3>");
		
		RequestDispatcher rd1= req.getRequestDispatcher("RedirectHome.jsp");
		rd1.include(req, resp);
	}
}
