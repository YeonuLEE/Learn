package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContext;

//기본적인 DB연결 관리 클래스 

public class JDBConnection {

	public Connection con;     //데이터베이스와의 연결 담당
	public PreparedStatement psmt; //인파라미터가 있는 동적쿼리문 실행 시 사용
	public Statement stmt;   //인파라미터가 없는 정적 쿼리문 실행시 사용
	public ResultSet rs;      //SELECT쿼리문의 결과를 저장할때 사용 
	
	public JDBConnection() {
		try {
			//JDBC드라이버 로드 
			Class.forName("oracle.jdbc.OracleDriver");
			//DB에 연결 
			String url = "jdbc:oracle:thin:@localhost:1521:orcl"; 
			String id = "test";
			String pwd = "1234";
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("con의 참조값" + con);
			System.out.println("DB연결 성공(기본 생성자)");
			
			
			//결과값 확인 
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	 public JDBConnection(String driver, String url, String id, String pwd) {
		 try {
				//JDBC드라이버 로드 
				Class.forName(driver);
				//DB에 연결 
				
				con = DriverManager.getConnection(url, id, pwd);
				System.out.println("con의 참조값" + con);
				System.out.println("DB연결 성공(web.xml 생성자2)");
				
								
				
			} catch (Exception e) {
				e.printStackTrace();
			}
	 }
	
	 //세번째 생성자 
	 public JDBConnection(ServletContext application) {
		 
		 try {
			String driver = application.getInitParameter("OracleDriver");
			Class.forName(driver);
			String url = application.getInitParameter("OracleURL");
		    String id =  application.getInitParameter("OracleId");
		    String pwd = application.getInitParameter("OraclePwd");
		   
		    try {
				con = DriverManager.getConnection(url,id,pwd);
				System.out.println("DB연결 성공 (생성자 3)");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 
	 }
	 
	 
		//연결 종료
		public void close() {
			
		 try {
			 if(rs != null) rs.close();
			 if(stmt != null) stmt.close();
			 if(psmt != null) psmt.close();
			 if(con != null) con.close();
			 System.out.println("JDBC 자원 해제");
			
		} catch (Exception e) {
            e.printStackTrace();
		}	
			
		
		
		
	}
	
	
	
}
