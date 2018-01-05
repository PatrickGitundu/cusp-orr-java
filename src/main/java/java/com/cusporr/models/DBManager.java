package com.cusporr.models;
import java.io.Serializable;
import java.sql.*;

public class DBManager implements Serializable
{
	private static final long serialVersionUID = 1L;
	
	static Connection cn = null;
	ServerConnectionBehavior scb = null;
	
	public DBManager()
	{
		
	}
	
	public DBManager(ServerConnectionBehavior conBehavior)
	{
		scb = conBehavior;
	}
	
	public boolean setConnectionBehavior(ServerConnectionBehavior value)
	{
		if (value == null)
		{
			throw new IllegalArgumentException("Please use a valid connection behavior");
		}
		scb = value;
		return true;
	}
	
	public boolean openConnection()
	{
		try
		{
			if (scb == null)
			{
				throw new IllegalArgumentException("Define "
						+ "a connection behavior");
			}
			if (cn != null) closeConnection(false);
			cn = scb.getConnection();
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return false;
		}
		if (cn == null) return false;
		return true;
	}

	public boolean closeConnection(boolean keepAlive)
	{
		try
		{
			if (cn != null)
			{
				if (!cn.isClosed())
				{
					cn.close();
				}
			}
			if (!keepAlive)
			{
				cn = null;
			}
		}
		catch (Exception ex)
		{
			ex.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean isConnected()
	{
		return cn != null; 
	}
	
	public void createDb()  {
		if (openConnection()) {
			Statement stat = null;
			PreparedStatement preparedStatement = null;
			try {
	        	stat = cn.createStatement();
	            stat.executeUpdate("drop table if exists users;");
	            stat.executeUpdate("create table users (user varchar(15), pwd varchar(15));");
	            
	            preparedStatement =  cn.prepareStatement("insert into users values(?,?)");
	            
	            preparedStatement.setString(1, "Kate");
	            preparedStatement.setString(2, "admin");
	            preparedStatement.addBatch();
	            preparedStatement.setString(1, "Joe");
	            preparedStatement.setString(2, "admin");
	            preparedStatement.addBatch();
	            preparedStatement.setString(1, "guest");
	            preparedStatement.setString(2, "guest");
	            preparedStatement.addBatch();
	            
	            cn.setAutoCommit(false);
	            preparedStatement.executeBatch();
	            cn.setAutoCommit(true);
	        }
	        catch (SQLException e) {
	        	e.printStackTrace();
	        }
		}
		else System.out.println("Could not create db...");
		
    }
	
	public boolean ExecuteNonQuery(String query)
	{
		try
		{
			Statement st = cn.createStatement();
			int i = st.executeUpdate(query);
			if (i == -1)
			{
				//log it
				return false;
			}
			st.close();
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}
	

	public ResultSet ExecuteResultSet(String query) throws SQLException
	{
		PreparedStatement st = cn.prepareStatement(query);
		ResultSet rs = st.executeQuery();
		return rs;
	}
	
	public static Connection getConnection()
	{
		return cn;
	}

	public String getConnectionURL()
	{
		return scb.getConnectionURL();
	}
	
	public String getTablesSchemaQuery()
	{
		return scb.getTablesSchemaQuery();
	}
}
