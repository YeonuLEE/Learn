<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>   
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 지시어</title>
</head>
<body>
<%  //스크립트릿
Date today = new Date();
SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");
String todayStr = dateformat.format(today);
out.println("오늘 날짜는 " + todayStr);
%>

</body>
</html>