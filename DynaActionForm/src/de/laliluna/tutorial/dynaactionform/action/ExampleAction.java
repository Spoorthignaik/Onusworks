//Created by MyEclipse Struts
// XSL source (default): platform:/plugin/com.genuitec.eclipse.cross.easystruts.eclipse_3.8.4/xslt/JavaClass.xsl

package de.laliluna.tutorial.dynaactionform.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;

/** 
 * MyEclipse Struts
 * 
 * 
 * XDoclet definition:
 * @struts:action path="/example" name="exampleForm" input="/form/example.jsp" scope="request" validate="true"
 */
public class ExampleAction extends Action {

	public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,
		HttpServletResponse response) {
		
		
		DynaActionForm exampleForm = (DynaActionForm) form;
		
		System.out.println(exampleForm.get("name"));
		System.out.println(exampleForm.get("age"));
		
		ActionErrors actionErrors = new ActionErrors();
		
		if(exampleForm.get("name").toString().length() < 3){
			actionErrors.add(ActionErrors.GLOBAL_ERROR, new ActionError("error.name"));
		}
		
		if(Integer.parseInt(exampleForm.get("age").toString()) < 1){
			actionErrors.add(ActionErrors.GLOBAL_ERROR, new ActionError("error.age"));
		}
		
		
		saveErrors(request, actionErrors);
		
		return mapping.findForward("showExample");
	}

}