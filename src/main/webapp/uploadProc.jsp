<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
  String filename = "";
  int sizeLimit = 5 * 1024 * 1024; // 최대 용량 5mb
  
  String realPath = request.getServletContext().getRealPath("/upload"); // 서버상 실제 경로
  System.out.println(realPath);
  
  // 경로가 없으면 만들어라
  File dir = new File(realPath);
  if(!dir.exists()) dir.mkdirs();
  
  MultipartRequest mr = null;
  mr = new MultipartRequest(
		  request,
		  realPath,
		  sizeLimit,
		  "utf-8",
		  new DefaultFileRenamePolicy() // 동일한 이름이면 뒤에 번호를 붙인다는 정책		  
	   );
  
  String title = mr.getParameter("title");
  String f = mr.getFilesystemName("f");
%>

<h3>제목:<%=title%></h3>
<h3>파일명:<%=f%></h3>