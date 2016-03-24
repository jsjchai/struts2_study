package bbs;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

public class BBSBean {
	 private int id;
	 private int pid;
	 private int rootid;
	 private String name;
	 private String title;
	 private String cont;
	 private Timestamp pdate;
	 private int grade;
	 private boolean isleaf;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getRootid() {
		return rootid;
	}
	public void setRootid(int rootid) {
		this.rootid = rootid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public Timestamp getPdate() {
		return pdate;
	}
	public void setPdate(Timestamp pdate) {
		this.pdate = pdate;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public boolean isIsleaf() {
		return isleaf;
	}
	public void setIsleaf(boolean isleaf) {
		this.isleaf = isleaf;
	}
	public void initFormRes(ResultSet rs){
		try {
			setId(rs.getInt("id"));
			setPid(rs.getInt("pid"));
			setRootid(rs.getInt("rootid"));
			setName(rs.getString("name"));
			setTitle(rs.getString("title"));
			setPdate((rs.getTimestamp("pdate")));
			setIsleaf(rs.getInt("isleaf")==0?true:false);
			setCont(rs.getString("cont"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
