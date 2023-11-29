package beans;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class StudentController extends Action {

	public StudentController() {
		System.out.println("Created StudentController....");
	}

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm bean, HttpServletRequest req,
			HttpServletResponse resp) {

		Student st = (Student) bean;

		System.out.println(st.getName());
		System.out.println(st.getEmail());
		System.out.println(st.getAddress());

		bean.reset(mapping, req);

		return mapping.findForward("success");

	}
}
