<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><%!
String id = "test";
String pwd = "1234";
%>
<meta charset="UTF-8">
<title>로그인 id, pwd 비교</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String id1 = request.getParameter("user_id");
String pwd1 = request.getParameter("user_pwd");

if (id1.equalsIgnoreCase(id) && pwd1.equalsIgnoreCase(pwd)) {
    response.sendRedirect("loginOk.jsp");
}else{
	request.getRequestDispatcher("loginMain.jsp?loginErr=1").forward(request, response);
}

%>

</body>
</html>