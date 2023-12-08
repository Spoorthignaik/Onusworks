package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

import beans.LoginForm;

public class LoginAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		LoginForm lf = (LoginForm) form;

		String uname = lf.getUname();
		String pwd = lf.getPwd();
		String role = lf.getRole();

		Class.forName("com.mysql.jdbc.Driver");

		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school", "root", "root");

		// querry
		String q = "select * from login where uname=?,pwd=?,role=?";

		PreparedStatement pstm = con.prepareStatement(q);

		pstm.setString(1, uname);
		pstm.setString(2, pwd);
		pstm.setString(3, role);

		ActionForward af = mapping.findForward("success");

		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			if (role.equals("admin"))
				af = mapping.findForward("adminSucceses");
			if (role.equals("employee"))
				af = mapping.findForward("employeeSucceses");
			if (role.equals("user"))
				af = mapping.findForward("userSucceses");
		} else {
			ActionMessages am = new ActionMessages();
			am.add("uname", new ActionMessage("msg4"));
			am.add("pwd", new ActionMessage("msg5"));
			af = mapping.findForward("samepage");
		}
		return af;

	}

}
