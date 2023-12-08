package controller;

import java.io.File;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DownloadAction;

public class FileDownloadController extends DownloadAction {

	@Override
	protected StreamInfo getStreamInfo(ActionMapping mapping, ActionForm form, HttpServletRequest req,
			HttpServletResponse resp) throws Exception {

		String filename = req.getParameter("filename");
		StreamInfo info = null;

		if (filename.contains("struts")) {
			File f = new File("C:/Users/Test/Desktop/filesForDownload/string.pdf");
			info = new FileStreamInfo("application/pdf", f);
			resp.setContentType("application/pdf");
			resp.setHeader("Content-Disposition", "attachment;filename=stringbook.docx");

		}

		if (filename.contains("pk")) {
  
		}

		if (filename.contains("image")) {
			File f = new File("C:/Users/Test/Desktop/filesForDownload/snap.png");
			info = new FileStreamInfo("image/png", f);
			resp.setContentType("image/png");
			resp.setHeader("Content-Disposition", "inline;filename=strutsimage.docx");
		}
		return info;
	}

}
