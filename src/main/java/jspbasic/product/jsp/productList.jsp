<%@ page import="jspbasic.ProductProc"%>
<%@ page import="jspbasic.Product"%>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
    
    
<% 
  List<Product> productList = new ProductProc().listProduct();
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
</head>
<body>
<div id="wrapper">
  <h2>상품 리스트</h2>
    <p>
      <button onclick="location.href='productWriteForm.jsp';">등록</button>
    </p>
    <table>
      <thead>
        <tr>
          <th>품번</th>
          <th>회사명</th>
          <th>품번</th>
          <th>품번</th>
          <th>품번</th>
          <th>품번</th>
          <th>제조일시</th>
          <th>수정</th>
          <th>삭제</th>
        </tr>
        </thead>
        <tbody>
        <%
          for(int i=0; i<productList.size(); i++) {
        	  Product product = productList.get(i);
        %>
        <tr>
          <td><%=product.getPno()%></td>
          <td><%=product.getPcomp()%></td>
          <td><%=product.getPname()%></td>
          <td><%=product.getPcolor()%></td>
          <td><%=product.getPamt()%></td>
          <td><%=product.getPprice()%></td>
          <td><%=product.getPmdate()%></td>
          <td>
          	<a href="productUpdateProc.jsp?pno=<%=product.getPno()%>">[수정]</a>
          </td>
          <td>
          	<a href="productDeleteProc.jsp?pno=<%=product.getPno()%>">[삭제]</a>
          </td>          
        </tr>
        <%
          }
        %>
		</tbody>
  	 </table>
	</div>
</html>