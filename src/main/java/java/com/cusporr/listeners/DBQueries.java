package com.cusporr.listeners;

import java.sql.*;

import com.cusporr.models.DBManager;

public class DBQueries {
       
	public static ResultSet ExecuteLogin(String u, String p) throws SQLException {
		Connection cn = DBManager.getConnection();
		if (u.equals("guest")) {
			String ln = "select * from users where user=?";
			PreparedStatement login = cn.prepareStatement(ln);
			login.setString(1,u);
	        ResultSet rs = login.executeQuery();
	        return rs;
		}
		else {
			String ln = "select * from users where user=? and pwd=?";
			PreparedStatement login = cn.prepareStatement(ln);
			login.setString(1,u);
	        login.setString(2,p);
	        ResultSet rs = login.executeQuery();
	        return rs;
		}
	}

}
