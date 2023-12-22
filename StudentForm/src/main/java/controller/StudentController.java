package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import beans.StudentDto;
import beans.StudentForm;

public class StudentController extends Action {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		StudentForm formBean=(StudentForm)form;
		StudentDto studentDto=new StudentDto();
		
		if((formBean.getStudentDto.getStude ))
		return super.execute(mapping, form, request, response);
	}

}
