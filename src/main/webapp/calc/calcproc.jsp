<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");
	int num1 = request.getParameter("num1") ==null ? 0 : Integer.parseInt(request.getParameter("num1"));
	int num2 = request.getParameter("num2") ==null ? 0 : Integer.parseInt(request.getParameter("num2"));
	String operator = request.getParameter("operator");

	 
	if(operator!=null) {
		int result = 0;
		String str = "";
		if(operator.equals("+")) {
			result = num1 + num2;
			str = "합은";
		} else if(operator.equals("-")) {
			result = num1 - num2;
			str = "차는";
		} else if(operator.equals("*")) {
			result = num1 * num2;
			str = "곱은";
		} else if(operator.equals("/")) {
			result = num1 / num2;
			str = "몫은";
		}
	   
	out.print("두 수의" + str + " " + result + " 입니다");
	} else {
		out.print("입력을 확인해주세요");
	}
   
%>