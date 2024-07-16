<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%
	application.setAttribute("quiz4ans", request.getParameter("quiz4ans"));
	response.sendRedirect("quiz5.jsp");
%> 