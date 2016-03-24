package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DB {

	public static Connection createConn() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bbs2014", "root", "527007690");
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return conn;
	}

	public static PreparedStatement getPrep(Connection conn, String sql) {
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ps;
	}

	public static void close(Connection conn) {
		if (conn != null) {
			try {
				conn.close();
				conn=null;
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public static void close(Statement stat) {
		if (stat != null) {
			try {
				stat.close();
				stat=null;
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public static void close(ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
				rs=null;
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
