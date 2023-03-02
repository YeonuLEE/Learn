<%@ page import = "utils.CookieManager" %>
<%@ page import = "utils.JSFunction" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//id = "test"  pwd ="1234" 지정 후 테스트 
//1. 폼 값 읽기
String user_id = request.getParameter("user_id");
String user_pw = request.getParameter("user_pw");
String save_check = request.getParameter("save_check");

//2. 사용자 인증 
if("test".equals(user_id) && "1234".equals(user_pw)){
      	//로그인 성공  후 아이디저장체크 확인 후 쿠키 생성 
	if(save_check != null && save_check.equals("Y")){
	     CookieManager.makeCookie(response, "loginId", user_id, 3600);	
	}
	else {
		 CookieManager.deleteCookie(response, "loginId");
		}
	
	JSFunction.alertLocation("로그인 성공","IdSaveMain.jsp", out);	
}
	
else{ // 로그인 실패 
		
       JSFunction.alertBack("로그인에 실패했습니다.", out);		
	}
	
 



//3. 아이디 저장하기 체크 확인해서  쿠키 생성  아니면 쿠키 삭제 


//4. 로그인성공했습니다.   IdSaveMain.jsp 이동 

//5. 실패  메세지 출력 
%>