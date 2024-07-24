<%@page import="jspbasic.product.ProductProc"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<%
	int pno = Integer.parseInt(request.getParameter("pno"));
	int result = new ProductProc().deleteProduct(pno);
	if (result > 0) {
		System.out.print("정상적으로 삭제 완료!");
	} else {
		System.out.print("삭제 실패!");
	}
	response.sendRedirect("productList.jsp");	
%>