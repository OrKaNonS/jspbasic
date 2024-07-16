<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2>문제 : 소금이 죽으면?</h2>
<form action="quiz2Proc.jsp">
	<input type="hidden" name="quiz1ans" value='<%=request.getAttribute("quiz1ans")%>'/>
	정답 : <input type="text" name="quiz2ans" />&nbsp;
	<input type="submit" value="다음 문제" />
</form> 