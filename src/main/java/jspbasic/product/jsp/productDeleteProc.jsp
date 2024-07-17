<%@page import="jspbasic.ProductProc"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>


<%
  int pno = Integer.parseInt(request.getParameter("pno"));
  int result = new ProductProc().deleteProduct(pno);
  if(result > 0) {
	  out.print("<script>alert('정상적으로 삭제 완료!');</script>");
  } else {
	  out.print("<script>alert('삭제 실패!');</script>");
  }
  response.sendRedirect("productList.jsp");
%>