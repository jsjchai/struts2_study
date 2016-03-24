package model;
import java.sql.*;
public class StudentBeanCI {
	private Connection conn=null;
	private Statement st=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	//验证用户
	public boolean check(String username,String password){
		boolean b=false;
		GetConn gc=new GetConn();
		conn=gc.getConnection();
		try {
			st=conn.createStatement();
			rs=st.executeQuery("select password from Users where uno= '"+username+"'");
			if(rs.next()){
				String pw=rs.getString(1);
				if(password.equals(pw)){
					b=true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeDB();
		}
		return b;
	}
	public void closeDB(){
		try {
			if(conn!=null){
				conn.close();
				conn=null;
			}
			if(st!=null){
				st.close();
				st=null;
			}
			if(ps!=null){
				ps.close();
				ps=null;
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
