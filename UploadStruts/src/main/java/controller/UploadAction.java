package controller;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import dto.bean;
import dao.Util;

@MultipartConfig(maxFileSize = 23000000)
public class UploadAction extends Action

{
	
	private Connection con;

	public UploadAction()
	{
		con =Util.getConnection();
	}
	
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		bean b = (bean)form;
		
		  String username= b.getUsername(); 
		  String password= b.getPassword();
		 
		
		InputStream inputStream=null;
		
		Part filePart=b.getPhoto();
		if(filePart!=null)
		{
			System.out.println(filePart.getName());
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());
			
			inputStream =filePart.getInputStream();
			
		}
			String message =null;
	try {
			String sql="INSERT INTO image(username,password,photo) values(?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			
			if(inputStream!=null)
			{
				ps.setBlob(3, inputStream);
			}
			
			int row = ps.executeUpdate();
			if(row>0)
			{
				message ="image is Uploaded Successfully into the DataBase";
				
			}
		
		}
	catch (SQLException ex) {
		message = "ERROR : "+ex.getMessage();
		ex.printStackTrace();
	}
	
	request.setAttribute("message", message);
		if(username.equals("")||password.equals(""))
		return mapping.findForward("error");
		else
			return mapping.findForward("success");
	}

}
