package vaannila;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;


public class LinkAction extends DispatchAction {

	public ActionForward friends(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		return mapping.findForward("friends");
	}

	/**
	 * This is the Struts action method called on
	 * http://.../actionPath?method=myAction2, where "method" is the value specified
	 * in <action> element : ( <action parameter="method" .../> )
	 */
	public ActionForward office(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		return mapping.findForward("office");
	}
}
