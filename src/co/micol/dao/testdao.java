package co.micol.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class testdao {
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	DataSource ds;
	public testdao() {
		try {
			Context context = new InitialContext();
			ds = (DataSource)context.lookup("java.comp/env/jdbc/myoracle");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public void select() {
		String sql = "select * from member";
		try {
			conn= ds.getConnection();
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				System.out.println(rs.getString("mname"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
	}
	
	private void close() {
		try {
			if(rs != null) rs.close();
			if(psmt != null) psmt.close();
			if(conn != null) conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
