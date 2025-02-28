
<%@page import="jspbasic.board.Board"%>
<%@page import="jspbasic.board.BoardDao"%>
<%@page import="jspbasic.board.BoardInterface"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%
	int bid = Integer.parseInt(request.getParameter("bid"));

	BoardInterface bi = new BoardDao();
	Board board = bi.getBoard(bid);
	
	bi.addCount(bid);	// 조회수 증가
	
	pageContext.setAttribute("board", board);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardView</title>
<style>
	.contentbox {
	border : 1px solid black;
	width : 400px;
	height : 250px;
	padding : 5px;
	margin : 1px;
	}
	
	#wrapper {
	border : 1px solid black;
	width : 600px;
	}
</style>
</head>
<body>
<div id="wrapper">
	<h2>게시물 보기</h2>
	번호 : ${board.bid}<br />
	분류 : ${board.bsort}<br />	
	제목 : ${board.btitle}<br />
	<%
	  pageContext.setAttribute("lineChar", "\n");
	%>	
	내용<br />
	<div class="contentbox">
	${fn:replace(board.bcontent, lineChar,"<br />")}<br />
	</div>	
	작성자 : ${board.bwriter}<br />
	조회수 : ${board.bcount}<br />
	등록일시 : <fmt:formatDate value="${board.bregdate}" pattern="yy/MM/dd HH:mm" /><br />
	첨부파일 :<c:if test="${!empty board.cfn}"><a href="/jspbasic/filedownload?filename=${board.cfn}">${board.cfn}</a></c:if><br />
	<p><input type="button" value="목록" onclick="location.href='boardListProc.jsp';" /></p>
</div>
</body>
</html>















