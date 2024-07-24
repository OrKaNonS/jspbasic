package jspbasic.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class FileuploadServlet extends HttpServlet{
	
	@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			doPost(req, resp); // get으로 온걸 post로 넘김
		}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
	String realPath = "D:/upload"; // 서버상 실제 경로
 
	// 경로가 없으면 만들어라
	File dir = new File(realPath = "D:/upload");
	if(!dir.exists()) dir.mkdirs();
	
	
	new MultipartRequest(request, realPath, 5 * 1024 * 1024, "utf-8",
			new DefaultFileRenamePolicy() // 동일한 이름이면 뒤에 번호를 붙인다는 정책		  
		   );
	
}

}
