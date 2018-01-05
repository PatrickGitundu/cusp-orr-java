package com.cusporr.listeners;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.cusporr.models.DBManager;
import com.cusporr.models.SQLServerConnectionBehavior;
import com.cusporr.models.ServerConnectionBehavior;


@WebListener
public class DBManagerSetup implements ServletContextListener {

	private DBManager dbm = null;
    
	public DBManagerSetup() {

    }

	@Override
    public void contextDestroyed(ServletContextEvent arg0)  { 
    	if (dbm != null) {
    		if (dbm.isConnected()) {
    			dbm.closeConnection(false);
    		}
    	}
    	dbm = null;
    }

	@Override
    public void contextInitialized(ServletContextEvent sce)  { 
    	ServletContext sc = sce.getServletContext();
    	
    	ServerConnectionBehavior scb = new SQLServerConnectionBehavior();
    	dbm = new DBManager(scb);
    	sc.setAttribute("DBMan", dbm);    	    	
    }
}
