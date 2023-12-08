package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.RequestProcessor;

public class LoginCheckingRequestProcessor extends RequestProcessor {

	@Override
	protected boolean processPreprocess(HttpServletRequest request, HttpServletResponse response) {

		
		System.out.println("Request Processor..............");
		String uname = request.getParameter("uname");
		String pword = request.getParameter("pword");
		
		if (uname.equals("admin") &&pword.equals("admin123"))
			return true;
		else
			return false;
	}
}
