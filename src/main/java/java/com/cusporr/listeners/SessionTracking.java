package com.cusporr.listeners;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class SessionTracking implements HttpSessionListener {

	private static int activeusers;
    public SessionTracking() {

    }


    public void sessionCreated(HttpSessionEvent se)  { 
    	activeusers++;
    }

    public void sessionDestroyed(HttpSessionEvent se)  { 
    	activeusers--;
    }
    public static int getActiveSessions() {
    	return activeusers;
    }
	
}
