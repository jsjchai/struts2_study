package model;
import java.sql.*;
public class GetConn {
	private Connection conn=null;
	public Connection getConnection(){
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String url="jdbc:sqlserver://localhost:1433;databaseName=ѧ����Ϣ�������ݿ�";
			String user="chai";
			String passWord="527007690";
			conn=DriverManager.getConnection(url, user, passWord);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}