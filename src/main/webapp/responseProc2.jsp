<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<%
	String name = request.getParameter("name");
	out.print("responseProc2.jsp => 이름 : " + name + "<br />");
	
	out.print("name의 속성변수의 값 : " + request.getAttribute("name"));
	
	RequestDispatcher rd = request.getRequestDispatcher("responseProc3.jsp");
	rd.forward(request, response);
	
%> 
	