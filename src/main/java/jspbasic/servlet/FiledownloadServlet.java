package jspbasic.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FiledownloadServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dir = "D:/upload";
		String filename = request.getParameter("filename");
		String filefullname = dir + "/" + filename;
		try {
			File file = new File(filefullname);
			byte[] bArray = new byte[4096];
			
			response.setContentType("application/octet-stream");
			String encName = new String(filename.getBytes("utf-8"), "8859_1");
			response.setHeader("Content-Disposition", "attachment; filename=" +encName);
			FileInputStream fis = new FileInputStream(filefullname);
			OutputStream os = response.getOutputStream();
			
			int numRead = 0;
			while((numRead = fis.read(bArray, 0, bArray.length)) != -1) {
				os.write(bArray, 0, numRead);
			}
			os.close();
			fis.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
