<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2>문제 : 세상에서 가장 빠른 닭은?</h2>
<form action="quiz4Proc.jsp">
	<input type="hidden" name="quiz1ans" value='<%=request.getAttribute("quiz1ans")%>'/>
	<input type="hidden" name="quiz2ans" value='<%=request.getAttribute("quiz2ans")%>'/>
	<input type="hidden" name="quiz3ans" value='<%=request.getAttribute("quiz3ans")%>'/>
	정답 : <input type="text" name="quiz4ans" />&nbsp;
	<input type="submit" value="다음 문제" />
</form>