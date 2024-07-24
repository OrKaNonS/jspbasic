<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="car" class="jspbasic.Car" />
<jsp:setProperty name="car" property="*" />

<jsp:forward page="registCarProc.jsp">
  <jsp:param name="mf" value="${car.mf}" />
  <jsp:param name="model" value="${car.model}" />
  <jsp:param name="cc" value="${car.cc}" />
  <jsp:param name="color" value="${car.color}" />
  <jsp:param name="price" value="${car.price}" />
</jsp:forward>


제조사 : ${car.mf}<br />
모델명 : ${car.model}<br />
배기량 : ${car.cc}<br />
색상 : ${car.color}<br />
가격 : ${car.price}<br />
