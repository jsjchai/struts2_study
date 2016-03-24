package bbs;
import java.sql.*;
public class DB {
	public static Connection getconn(){
		Connection conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bbs","root","527007690");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	public static Statement getStat(Connection conn){
		Statement stat=null;
		try {
			stat=conn.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return stat;
	}
	public static int executeUpdate(Connection conn, String sql) {
		int ret = 0;
		Statement stmt = null;
		try {
			stmt = conn.createStatement();
			ret = stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
		}
		return ret;
	}
	public static ResultSet executeQuery(Statement stat,String sql){
		ResultSet rs=null;
		try {
			rs=stat.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public static PreparedStatement getPrep(Connection conn,String sql){
		PreparedStatement ps=null;
		try {
			ps=conn.prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ps;
	}
	public static void close(Connection conn){
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public static void close(Statement stat){
		if(stat!=null){
			try {
				stat.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public static void close(ResultSet rs){
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
