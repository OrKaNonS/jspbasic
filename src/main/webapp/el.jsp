<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="jspbasic.Person"%>


    
${"Hello"} <br />
${123} <br />
${false} <br />

<%
  pageContext.setAttribute("score", new int[]{90, 100, 70});
%>
${score[1]}<br />
${pageScope.score[1]}<br />


<%
  List<String> list = new ArrayList<String>();
  list.add("a");
  list.add("b");
  list.add("c");
  pageContext.setAttribute("list", list);
%>
${list[2]}<br />


<% 
  Map<String, String> map = new HashMap<String, String>();
  map.put("1", "a");
  map.put("2", "b");
  map.put("3", "c");
  pageContext.setAttribute("map", map);
%>
${map["1"]}<br />

<%
  //안에서는 session으로 부룰 수 있지만 외부에선 sessionScope 스코프 지정해 줘야함.
  session.setAttribute("name", "홍길동");
  out.print(session.getAttribute("name") + "<br />");  
%>
${session.name}<br />
${sessionScope.name}<br /> 

<%
  Person person = new Person("홍길동", 20);
  pageContext.setAttribute("person", person);
%>
<%-- 아래에서 person.name 은 Person.java의 getName을 자동으로 해서 가져온거임. --%>
<%-- 아니라면 name은 private이라 사용 불가능함. --%>
${person.name}<br />
${pageScope.person.name}<br />

${empty null}<br />
${empty true}<br />
${empty false}<br />
${empty ""}<br />
${empty "hello"}<br />


<%
  int[] intArr = new int[]{};
  out.print(intArr.length + "<br />");
  List list2 = new ArrayList();
  Map map2 = new HashMap();
  pageContext.setAttribute("intArr", intArr);
  pageContext.setAttribute("list2", list2);
  pageContext.setAttribute("map2", map2);
%>

${empty intArr}<br /> 
${empty list2}<br />
${empty map2}<br />





















