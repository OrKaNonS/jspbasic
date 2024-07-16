<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%
	request.setAttribute("quiz1ans", request.getParameter("quiz1ans"));
	request.setAttribute("quiz2ans", request.getParameter("quiz2ans"));
	request.setAttribute("quiz3ans", request.getParameter("quiz3ans"));	
	request.getRequestDispatcher("quiz4.jsp").forward(request, response);

%>