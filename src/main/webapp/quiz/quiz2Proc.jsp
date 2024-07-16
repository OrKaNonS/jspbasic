<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%
	request.setAttribute("quiz1ans", request.getParameter("quiz1ans"));
	request.setAttribute("quiz2ans", request.getParameter("quiz2ans"));
	request.getRequestDispatcher("quiz3.jsp").forward(request, response);
%>

