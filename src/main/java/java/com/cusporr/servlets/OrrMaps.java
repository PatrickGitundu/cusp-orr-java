package com.cusporr.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.http.HTTPException;


@WebServlet("/orrmaps.do")
public class OrrMaps extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public OrrMaps() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
				request.getRequestDispatcher("/maps.jsp").forward(request, response);
			}
		catch (HTTPException e) {}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
