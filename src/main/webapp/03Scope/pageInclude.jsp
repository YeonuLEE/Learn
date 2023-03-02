<%@ page import = "common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageInclude.jsp</title>
</head>
<body>
<%
int v2 = (Integer) (pageContext.getAttribute("value1"));
String str2 =  pageContext.getAttribute("pageString").toString();
Person p2  = (Person) pageContext.getAttribute("pagePerson");
%>

<ul>
  <li><%= v2 %></li>
  <li><%=str2 %></li>
  <li><%=p2.getName() %> , <%= p2.getAge() %></li>
</ul>

</body>
</html>