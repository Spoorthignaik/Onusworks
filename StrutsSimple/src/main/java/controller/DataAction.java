package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;

import bean.DataBean;
public class DataAction extends Action
{
	public ActionForward execute(ActionMapping mapping , ActionForm form, HttpServletRequest request , HttpServletResponse response)
	{
		return mapping.findForward("success");
		
	}
}