<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String uid = request.getParameter("uid");
	String upw = request.getParameter("upass");
	
	
	
	// 1. DB에서 uid에 id인  회원이 있는지 확인
	// 2. 있다면 uid에 해당하는 회원정보를 가져옴!!
	// 3. session에 필요한 회원정보를 속성변수에 저장
	// 4. 개인정보(비번, 전화번호 등)은 session에 넣지 말 것
	session.setAttribute("uid", uid);
	session.setAttribute("uname", "홍길동");
	session.setAttribute("ucount", "55");
	
	response.sendRedirect("main.jsp");	
%>