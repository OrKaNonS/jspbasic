<%@page import="jspbasic.product.Product"%>
<%@page import="jspbasic.product.ProductProc"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
  Product product = new ProductProc().getProduct(Integer.parseInt(request.getParameter("pno")));
  pageContext.setAttribute("product", product);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product Update</title>
</head>
<body>
<div id="wrapper">
	<form method="post" action="productUpdateProc.jsp">
		<input type="hidden" name="pno" value="${product.Pno}" /><br />
		회사명 : <input type="text" name="pcomp" value="${product.Pcomp}" /><br />
		상품명 : <input type="text" name="pname" value="${product.Pname}" /><br />
		색상 : <input type="text" name="pcolor" value="${product.Pcolor}" /><br />
		수량 : <input type="text" name="pamt" value="${product.Pamt}" /><br />
		가격 : <input type="text" name="pprice" value="${product.Pprice}" /><br />
		<input type="submit" value="확인" />
	</form>
</div>
</body>
</html>