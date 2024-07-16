<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%
	application.setAttribute("quiz2ans", request.getParameter("quiz2ans"));
	response.sendRedirect("quiz3.jsp");
%> 

 