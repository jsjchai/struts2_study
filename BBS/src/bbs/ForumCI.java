package bbs;
import java.sql.*;
import java.util.*;
public class ForumCI {
	private Connection conn;
	private Statement stat;
	private ResultSet rs;
	private PreparedStatement ps;
	private int pageCount;//共有几页
	//查询所有帖子
	public ArrayList<BBSBean> creatList(int pageNow){
		int pageSize=15; //每页显示几条记录
		int rowCount=0;//共有几条记录
		conn=DB.getconn();
		stat=DB.getStat(conn);
		String countsql="select count(*) from bbs where pid = 0";
	 	ResultSet rt=DB.executeQuery(stat, countsql);
	 	ArrayList<BBSBean> al=null;
		try{
			if(rt.next()){
		 		rowCount=rt.getInt(1);
		 	}
		 	//分页
		 	if(rowCount%pageSize==0)
		 		pageCount=rowCount/pageSize;
		 	else
		 		pageCount=rowCount/pageSize+1;
			String sql="select * from bbs where pid=0 order by pdate desc limit "+(pageNow-1)*pageSize+" , "+pageSize;
		    rs=DB.executeQuery(stat, sql);
			al=new ArrayList<BBSBean>();
			while(rs.next()){
				BBSBean bs=new BBSBean();
				bs.initFormRes(rs);
				al.add(bs);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DB.close(conn);
			DB.close(stat);
			DB.close(rs);
		}
       return al;
	}
	public ArrayList<BBSBean> post(int id){
		conn=DB.getconn();
	    stat=DB.getStat(conn);
		String sql="select * from BBS where rootid="+id;
	    rs=DB.executeQuery(stat, sql);
		ArrayList<BBSBean> al=new ArrayList<BBSBean>();
		try{
			while(rs.next()){
				BBSBean bs=new BBSBean();
				bs.initFormRes(rs);
				al.add(bs);
				}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DB.close(conn);
			DB.close(stat);
			DB.close(rs);
		}
		return al;
	}	
	public int getCount(){
		return pageCount;
	}
	public void replyCI(int rootid,String name,String title,String cont){
	    conn=DB.getconn();
		stat=DB.getStat(conn);
		String sql1="select id from BBS where isleaf=0 and rootid="+rootid;
	    rs=DB.executeQuery(stat, sql1);
		try {
			int pid=0;
			if(rs.next()){
				pid=rs.getInt(1);
			}
			String sql="insert into BBS values(null,?,?,?,?,?,now(),?)";
			ps=DB.getPrep(conn, sql);
			ps.setInt(1,pid);
			ps.setInt(2, rootid);
			ps.setString(3, name);
			ps.setString(4, title);
			ps.setString(5,cont);
			ps.setInt(6,0);
			ps.executeUpdate();
			if(title==null)
				  setleaf(pid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(rs);
		DB.close(stat);
		DB.close(ps);
		DB.close(conn);
	}
	public void setleaf(int pid){
		conn=DB.getconn();
		String sql="update bbs set isleaf=1 where id="+pid;
		ps=DB.getPrep(conn, sql);
		try {
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}
	public void setrootid(){
		conn=DB.getconn();
		stat=DB.getStat(conn);
		String sql="select id from bbs where rootid=0";
	    rs=DB.executeQuery(stat, sql);
		try {
			int id=0;
			if(rs.next()){
				id=rs.getInt(1);
			}
			String s="update bbs set rootid="+id+" where id="+id;
			ps=DB.getPrep(conn, s);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(rs);
		DB.close(stat);
		DB.close(ps);
		DB.close(conn);
	}
	public String getTitle(int id){
		String title=null;
		conn=DB.getconn();
		stat=DB.getStat(conn);
		String sql="select title from bbs where id= "+id;
        rs=DB.executeQuery(stat, sql);
		try {
			if(rs.next()){
				title=rs.getString(1);
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(conn);
		DB.close(stat);
		DB.close(rs);
		return title;
	}
	public String getName(int id){
		String name=null;
		conn=DB.getconn();
		stat=DB.getStat(conn);
		String sql="select name from bbs where id= "+id;
        rs=DB.executeQuery(stat, sql);
		try {
			if(rs.next()){
				name=rs.getString(1);
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(conn);
		DB.close(stat);
		DB.close(rs);
		return name;
	}
   //验证用户
	public boolean check(String username,String password){
		boolean b=false;
		conn=DB.getconn();
		try {
			stat=DB.getStat(conn);
			rs=DB.executeQuery(stat,"select password from user where uname ='"+username+"'");
			if(rs.next()){
				String pw=rs.getString(1).trim();
				if(password.equals(pw)){
					b=true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DB.close(conn);
			DB.close(stat);
			DB.close(rs);	
		}
		return b;
	}
	//回复次数
	public int getreplytime(int rootid){
		int time=0;
		conn=DB.getconn();
		try {
			stat=DB.getStat(conn);
			rs=DB.executeQuery(stat,"select count(*) from bbs where rootid = "+rootid+" group by rootid");
			if(rs.next()){
				time=rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DB.close(conn);
			DB.close(stat);
			DB.close(rs);	
		}
		return time;
	}
	//注册
	public boolean registerCI(String username,String password){
		boolean b=true;
	    conn=DB.getconn();
		String sql="insert into user values(null,?,?,?)";
		ps=DB.getPrep(conn, sql);
		try {
			ps.setString(1,username);
			ps.setString(2,password);
			ps.setString(3,"head_80.jpg");
			ps.executeUpdate();
		} catch (SQLException e) {
			b=false;
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return b;
	}
	//删除
	public void del(int rootid){
	    conn=DB.getconn();
		String sql="delete from bbs where rootid="+rootid;
		DB.executeUpdate(conn, sql);
		DB.close(stat);
		DB.close(conn);
	}
	//搜索
	public ArrayList<BBSBean> search(int pageNow,String key){
		int pageSize=15; //每页显示几条记录
		int rowCount=0;//共有几条记录
		conn=DB.getconn();
		stat=DB.getStat(conn);
		String countsql="select count(*) from bbs where title like '%"+key+"%' or cont like '%"+key+"%'";
		rs=DB.executeQuery(stat, countsql);
	 	ArrayList<BBSBean> al=null;
		try{
			if(rs.next()){
		 		rowCount=rs.getInt(1);
		 	}
		 	//分页
		 	if(rowCount%pageSize==0)
		 		pageCount=rowCount/pageSize;
		 	else
		 		pageCount=rowCount/pageSize+1;
			String sql="select * from bbs where title like '%"+key+"%' or cont like '%"+key+"%' order by pdate desc limit "+(pageNow-1)*pageSize+" , "+pageSize;
			rs=DB.executeQuery(stat, sql);
			al=new ArrayList<BBSBean>();
			while(rs.next()){
				BBSBean bs=new BBSBean();
				bs.initFormRes(rs);
				al.add(bs);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DB.close(conn);
			DB.close(stat);
			DB.close(rs);
		}
       return al;
	}
}
