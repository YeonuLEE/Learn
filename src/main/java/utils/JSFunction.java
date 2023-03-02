package utils;

import javax.servlet.jsp.JspWriter;

public class JSFunction {  
	
	//메시지 알림창을 띄운 후 명시한 URL로 이동하는 기능 
	public static void alertLocation(String msg, String url, JspWriter out) {
		
	 try {
		String script = "" 
	                    +"<script>"
				        +" alert('" + msg +"');"
				        +" location.href = '" + url + "';"
				        +"</script>";   //삽입할 자바스크립트 코드 
		out.println(script);   //자바스크립트 코드를 out 내장객체로 출력(삽입)
	 }catch(Exception e) {}
	}

    //메시지 알림창을 띄운 후 이전 페이지로 돌아가기	
	public static void alertBack(String msg, JspWriter out) {
		
		try {
			String script = "" 
                    +"<script>"
			        +" alert('" + msg +"');"
			        +" history.back();"
			        +"</script>";   //삽입할 자바스크립트 코드 
	out.println(script); 
			
			
			
		} catch (Exception e) {
		}
		
	}
	
	
}
