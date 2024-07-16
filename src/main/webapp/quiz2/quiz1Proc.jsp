<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%
	application.setAttribute("quiz1ans", request.getParameter("quiz1ans"));
	response.sendRedirect("quiz2.jsp");
%> 