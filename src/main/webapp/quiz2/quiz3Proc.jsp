<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%
	application.setAttribute("quiz3ans", request.getParameter("quiz3ans"));
	response.sendRedirect("quiz4.jsp");
%> 