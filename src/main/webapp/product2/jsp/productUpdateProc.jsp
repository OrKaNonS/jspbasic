<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="jspbasic.product.ProductProc"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
  request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="product" class="jspbasic.product.Product" />
<jsp:setProperty name="product" property="*"/>

<c:set var="productProc" value="<% new ProductProc();%>" />

<%
	ProductProc productProc = new ProductProc();
	int result = productProc.updateProduct(product);
	if (result > 0) {
		System.out.println("수정 성공!");
	} else {
		System.out.println("수정 실패!");
	}
	response.sendRedirect("productList.jsp");
%>

