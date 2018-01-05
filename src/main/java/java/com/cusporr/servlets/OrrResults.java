package com.cusporr.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.http.HTTPException;


@WebServlet("/orrresults.do")
public class OrrResults extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public OrrResults() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
				request.getRequestDispatcher("/orrresults.jsp").forward(request, response);
			}
		catch (HTTPException e) {}
		
	}
}
