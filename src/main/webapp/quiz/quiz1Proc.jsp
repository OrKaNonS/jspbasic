<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%
	request.setAttribute("quiz1ans", request.getParameter("quiz1ans"));
	request.getRequestDispatcher("quiz2.jsp").forward(request, response);

%>