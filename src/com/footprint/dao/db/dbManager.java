package com.footprint.dao.db;

import java.sql.Connection;
import java.sql.SQLException;


public class dbManager implements Config{
	private Connection con;
	public Connection db() throws SQLException{
		
		try {
			Class.forName(DRIVER);
			con = java.sql.DriverManager.getConnection(URL, NAME, PWD);
			System.out.println("连接数据库成功！");
			} 
		catch ( Exception e) {
			System.out.println("连接数据库失败！");
			e.printStackTrace();
		}
		return con;
	

}
}
