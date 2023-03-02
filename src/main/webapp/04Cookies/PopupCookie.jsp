<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String chkVal = request.getParameter("inactiveToday");

if(chkVal != null && chkVal.equals("1")){
	//1. 쿠키생성
    //2. 경로설정 컨텍스트 루트
    //3. 쿠키 유지기간 설정
    //4. 응답객체에 쿠키 추가
    Cookie cookie = new Cookie("PopupClose", "off");  // 쿠키 생성 
    cookie.setPath(request.getContextPath());  // 경로 설정
    cookie.setMaxAge(60*60*24);  // 유지 기간 설정
    response.addCookie(cookie);  // 응답 객체에 추가 
    out.println("쿠키 : 하루 동안 열지 않음");
}  

%>