package kr.co.youmustcatchme.download.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.AbstractView;

@Controller
@RequestMapping("/download")
public class DownloadController extends AbstractView {
	
	@RequestMapping("/resume.do")
	public ModelAndView download()throws Exception{
		File down = new File("C:\\Users\\jkjk0\\Desktop\\16년 하반기\\조경현_summary_이력서_데이터분석+개발_v02.doc");
		return new ModelAndView("download","downloadFile",down);
	}
	
	public void DownloadView() {
		setContentType("applicaiton/download;charset=utf-8");
	}

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		File file = (File) model.get("downloadFile");
		response.setContentType(getContentType());
		response.setContentLength((int)file.length());

		String fileName = java.net.URLEncoder.encode(file.getName(), "UTF-8");

		response.setHeader("Content-Disposition", "attachment;filename=\""+fileName+"\";");
		response.setHeader("Content-Transfer-Encoding", "binary");

		OutputStream out = response.getOutputStream();
		FileInputStream fis = null;

		try {
			fis = new FileInputStream(file);
			FileCopyUtils.copy(fis, out);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (fis != null) { try { fis.close(); } catch (Exception e2) {}}
		}
		out.flush();

	}
}


 