package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import dao.userDaoS;
import dto.userS;


public class SelectUser extends GenericServlet

{
	public void service(ServletRequest req,ServletResponse resp) throws IOException 
	{
		String id= req.getParameter("id");
		
		userS p=new userS();
		p.setId(id);
		
		userDaoS dao=new userDaoS();
		ResultSet rs= null;
		try 
		{
		rs=	dao.selectUser(p);
		PrintWriter out=resp.getWriter();
		
		out.println("<h1>The Data Retrieval is Succesfull.......</h1>");
		out.println("<html><head><link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\"><body background=\"image9.jpg\" style=\"background-repeat: no-repeat; background-size:100%; background-size: cover;\">");
		out.print("<div style=background color: aquamarine;>\r\n"+" <table border=\"1\" cellpadding=\"5\">"
				+ "            <caption><h2>List of Users</h2></caption>\r\n"
				+ "            <tr>\r\n"
				+ "                <th>Id</th>\r\n"
				+ "                <th>Name</th>\r\n"
				+ "                <th>Email</th>\r\n"
				+ "                <th>Country</th>\r\n"
				+ "                "
				+ "            </tr>\r\n"
				+ "            \r\n"
				+ "        \r\n"
				+ "   ");
		while(rs.next())
		{
			out.print("<tr>");
			out.println("<td>"+rs.getInt(1));
			out.println("</td>");
			out.println("<td>"+rs.getString(2)); 
			out.println("</td>");
			out.println("<td>"+rs.getString(3));
			out.println("</td>");
			out.println("<td>"+rs.getString(4));
			out.println("</td></tr>");
			/*out.println("------------------------");
			out.println("<br><br>");*/
			
		}
		out.print("</table></div>");
		out.println("</body></head></html>");	
		

		RequestDispatcher rd1= req.getRequestDispatcher("RedirectHome.jsp");
		rd1.include(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
