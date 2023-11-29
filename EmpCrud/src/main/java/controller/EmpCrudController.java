package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import beans.Employee;
import dao.EmployeeDao;

public class EmpCrudController extends DispatchAction {

	// we should not override execute and dispatcher method
	// we have to write custom methods signature of method and return type should be
	// same
	// name of method should equal to button value

	public ActionForward save(ActionMapping am, ActionForm form, HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		Employee e = (Employee) form;
		EmployeeDao dao = new EmployeeDao();
		int i = dao.save(e.getId(), e.getName(), e.getEmail(), e.getAddress());

		if (i != 0)
			return am.findForward("success");
		else
			return am.findForward("fail");

	}

	public ActionForward update(ActionMapping am, ActionForm form, HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		Employee e = (Employee) form;
		EmployeeDao dao = new EmployeeDao();
		boolean b = dao.update(e.getId(), e.getName(), e.getEmail(), e.getAddress());

		if (b == true)
			return am.findForward("success");
		else
			return am.findForward("fail");
	}

	public ActionForward delete(ActionMapping am, ActionForm form, HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		Employee e = (Employee) form;
		EmployeeDao dao = new EmployeeDao();
		boolean b = dao.delete(e.getId());

		if (b == true)
			return am.findForward("success");
		else
			return am.findForward("fail");
	}

	public ActionForward find(ActionMapping am, ActionForm form, HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		Employee e = (Employee) form;
		EmployeeDao dao = new EmployeeDao();
		List list = dao.find(e.getId());
		req.setAttribute("list", list);

		return am.findForward("find");
	}

	public ActionForward findAll(ActionMapping am, ActionForm form, HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		Employee e = (Employee) form;
		EmployeeDao dao = new EmployeeDao();
		List list=dao.findAll();
		req.setAttribute("list", list);

		return am.findForward("findall");
	}
}
