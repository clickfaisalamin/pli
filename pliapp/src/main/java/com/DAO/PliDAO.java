package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class PliDAO {
	
	private Connection conn;

	public PliDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addPli(String fullname, String plicourse, String plistatus)
	{
		boolean b = false;
		try {
			
			
			String sql = "INSERT INTO pli (name,course, status) VALUES (?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, fullname);
			ps.setString(2, plicourse);
			ps.setString(3, plistatus);
			
			int i = ps.executeUpdate();
			if(i == 1) return true;
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}
	

}
