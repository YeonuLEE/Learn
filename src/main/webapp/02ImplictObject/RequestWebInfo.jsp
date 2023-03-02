<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestWebInfo.jsp</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<h2> 1.클라이언트로 부터 전송된 데이터 출력 </h2>
<ul>
<li>쿼리 스트링 : <%= request.getQueryString() %></li>
<li>전송된 값 1: <%= request.getParameter("eng") %> </li>
<li>전송된 값 2: <%= request.getParameter("kor") %></li>
</ul>
</body>
</html>