package com.cusporr.servlets;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cusporr.listeners.DBQueries;
import com.cusporr.models.DBManager;

@WebServlet("/hidden/processlogin.do")
public class ProcessLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ProcessLogin() {
        super();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession s = request.getSession();
    	s.invalidate();
    	response.sendRedirect("/cusp-orr-dev/");
    	return;
    }
    
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String u = request.getParameter("username");
		String user = (((u == "") || (u.toLowerCase() == "guest")) ? "guest" : u);
		String password = request.getParameter("password");
		
		DBManager dbm = (DBManager)getServletContext().getAttribute("DBMan");
		dbm.createDb();
		
		try 
		{
			if(!dbm.isConnected()) {
				if(!dbm.openConnection()) {
					System.out.println("Could not connect to the database...");
				}
			}
			
			ResultSet rs = DBQueries.ExecuteLogin(user, password);
			if (rs.next()){
				/*Start Session*/
				HttpSession s = request.getSession();
				s.setAttribute("userName", user);
				
				response.sendRedirect( response.encodeRedirectURL("/cusp-orr-dev/home"));
			}
			else {
				/*Redirect user in case of login failure
				 * */
				System.out.println("User not found.");
			}
		}
		catch (Exception e) {
			System.out.println("PLerror - " + e);
		}
	}
}