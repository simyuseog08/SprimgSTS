package sist.com.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

public class DownLoadView extends AbstractView { //파일 업로드 방법 
	
	 public DownLoadView() {
		// TODO Auto-generated constructor stub
		this.setContentType("application/download;UTF-8"); //다운로드 타입지정
	}
	@Override
	protected void renderMergedOutputModel(Map<String, Object> map, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		// TODO Auto-generated method stub
		File file = (File)map.get("downloadFile");
		response.setContentType(this.getContentType()); //컨텐츠에 헤더 변경
		response.setContentLength((int)file.length());
		String filename = null;
		filename = new String(file.getName().getBytes("utf-8"));
		response.setHeader("Content-Disposition", "attachment;filename=\""+filename+"\";");
		response.setHeader("Content-Transfef-encoding", "binary");
		OutputStream out = response.getOutputStream();
		FileInputStream fis = new FileInputStream(file);
		try {
			FileCopyUtils.copy(fis, out);//fis 로 읽어서 out으로 내보내기
		} catch (Exception e) {
			// TODO: handle exception
		}
		out.flush();
	}
	

}
