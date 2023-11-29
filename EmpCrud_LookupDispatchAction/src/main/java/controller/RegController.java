package controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import org.apache.struts.actions.LookupDispatchAction;

import beans.RegForm;
import dao.EmployeeDao;

public class RegController extends LookupDispatchAction {

	@Override
	protected Map getKeyMethodMap() {
		Map m = new HashMap();
		m.put("register", "empsave");
		m.put("update", "empUpdate");
		return null;
	}

	public ActionForward empsave(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		/*
		 * int id = Integer.parseInt(request.getParameter("id")); String name =
		 * request.getParameter("name"); String email = request.getParameter("email");
		 * float salary = Float.parseFloat(request.getParameter("salary"));
		 */

		// read data from formbean
		RegForm rf = (RegForm) form;
		int id = rf.getId();
		String name = rf.getName();
		String email = rf.getEmail();
		float salary = rf.getSalary();

		EmployeeDao edao = new EmployeeDao();
		int i = edao.register(id, name, email, salary);

		if (i != 0)
			return mapping.findForward("success");
		else
			return mapping.findForward("fail");
	}

	public ActionForward empUpdate(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		/*
		 * int id = Integer.parseInt(request.getParameter("id")); String name =
		 * request.getParameter("name"); String email = request.getParameter("email");
		 * float salary = Float.parseFloat(request.getParameter("salary"));
		 */

		// read data from formbean
		RegForm rf = (RegForm) form;
		int id = rf.getId();
		String name = rf.getName();
		String email = rf.getEmail();
		float salary = rf.getSalary();

		EmployeeDao edao = new EmployeeDao();
		int i = edao.update(id, name, email, salary);

		if (i != 0)
			return mapping.findForward("success");
		else
			return mapping.findForward("fail");
	}

}