package com.cusporr.models;

import java.io.Serializable;

public abstract class DBUserInfo implements Serializable
{
	private static final long serialVersionUID = 1L;
	
	private String uid;
	private String pwd;
	private String cat;
	
	public DBUserInfo()
	{
		
	}
	
	public DBUserInfo(String userID, String password, String catalog)
	{
		uid = userID;
		pwd = password;
		cat = catalog;
	}
	
	public String getUserID()
	{
		return uid;
	}
	
	public void setUserID(String value)
	{
		uid = value;
	}
	
	public String getPassword()
	{
		return pwd;
	}
	
	public void setPassword(String value)
	{
		pwd = value;
	}
	
	public String getCatalog()
	{
		return cat;
	}
	
	public void setCatalog(String catalog)
	{
		cat = catalog;
	}
}
