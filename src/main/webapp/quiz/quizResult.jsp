<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%
	int count = 0;
	if(((String)request.getParameter("quiz1ans")).equals("바나나킥")) count++;
	if(((String)request.getParameter("quiz2ans")).equals("죽염")) count++;
	if(((String)request.getParameter("quiz3ans")).equals("백조")) count++;
	if(((String)request.getParameter("quiz4ans")).equals("후다닭")) count++;
	if(((String)request.getParameter("quiz5ans")).equals("열바다")) count++;
	out.print("<h2>" + count + "/5 문제 정답 " + "</h2>");
	out.print("<button onclick=\"location.href='quiz1.jsp';\">다시하기</button>");
%>