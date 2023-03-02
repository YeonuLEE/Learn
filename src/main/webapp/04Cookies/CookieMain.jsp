<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키</title>
</head>
<body>
<h2>1. 쿠키 설정</h2>
<%
Cookie 	cookie = new Cookie("myCookie","JMT"); // 쿠키 생성
cookie.setPath(request.getContextPath()); // 경로설정
cookie.setMaxAge(3600);   //쿠키의 유지 기간 예)1시간 설정
response.addCookie(cookie);  //응답헤더에 쿠키 추가 
%>
<h2> 2. 쿠키 설정 직후 쿠키값 확인 </h2>
<%
Cookie[] cookies = request.getCookies();  // 요청헤더의 모든 쿠키 얻어 오기
if (cookies != null){
	  for(Cookie c : cookies){
		  String cookieName = c.getName();
		  String cookieValue = c.getValue();
		  out.println(String.format("%s : %s<br/>",cookieName,cookieValue));
	  }
	
}
%>
<h2> 3. 페이지 이동 후 쿠키값 확인 </h2>
<a href = "CookieResult.jsp">페이지 이동 후 쿠키값 확인</a>
</body>
</html>