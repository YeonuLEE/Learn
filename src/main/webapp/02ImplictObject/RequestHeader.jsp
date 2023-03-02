<%@ page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>내장 객체 - request</title></head>
<body>
    <h2>3. 요청 헤더 정보 출력하기</h2>
    <%
    Enumeration headers = request.getHeaderNames();  
    while (headers.hasMoreElements()) {  
        String headerName = (String)headers.nextElement();  
        String headerValue = request.getHeader(headerName); 
        out.print("헤더명 : " + headerName + ", 헤더값 : " + headerValue + "<br/>");
    }
    %>
    <p>이 파일을 직접 실행하면 referer 정보는 출력되지 않습니다.</p>
    
    <h2>4. 클라이언트와 서버의 환경정보 읽기</h2>
    <ul>
        <li>데이터 전송 방식 : <%= request.getMethod() %></li>
        <li>URL : <%= request.getRequestURL() %></li>
        <li>URI : <%= request.getRequestURI() %></li>
        <li>프로토콜 : <%= request.getProtocol() %></li>
        <li>서버명 : <%= request.getServerName() %></li>
        <li>서버 포트 : <%= request.getServerPort() %></li>
        <li>클라이언트 IP 주소 : <%= request.getRemoteAddr() %></li>
       
    </ul>
    
</body>
</html>