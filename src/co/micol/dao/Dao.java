package co.micol.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;

import co.micol.dto.Dto;

public abstract class Dao {
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "kim";
	private String password = "1234";
	
	Connection conn;
	
	public Dao() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,user,password);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public abstract void insert(Dto dto) ;
	
	public abstract void update(Dto dto) ;		
	
	public abstract void delete(Dto dto);
	
	public abstract ArrayList<Dto> select(); 
}
