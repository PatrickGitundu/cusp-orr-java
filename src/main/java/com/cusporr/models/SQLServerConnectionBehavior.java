package com.cusporr.models;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;

public class SQLServerConnectionBehavior
	extends DBUserInfo
	implements ServerConnectionBehavior, Serializable
{
	private static final long serialVersionUID = 1L;
	
	public SQLServerConnectionBehavior()
	{
		super();
	}
	
	public SQLServerConnectionBehavior(String uid, String pwd, String cat)
	{
		super(uid, pwd, cat);
	}

	@Override
	public Connection getConnection() {
		try
		{
			Class.forName("org.sqlite.JDBC").newInstance();
			Connection cn = DriverManager.getConnection(getConnectionURL());
			return cn;
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public String getConnectionURL() {
		return "jdbc:sqlite::memory:";
	}
	
	@Override
	public String getConnectionDetails() {
		return "SQLite Database Connection to " 
					+ getCatalog();
	}

	@Override
	public String getTablesSchemaQuery() {
		return "select table_name from information_schema.tables "
					+ "where table_schema = " + getCatalog();
	}
}
