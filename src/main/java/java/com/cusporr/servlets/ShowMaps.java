package com.cusporr.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.http.HTTPException;


@WebServlet("/maps")
public class ShowMaps extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ShowMaps() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s = request.getSession();
		String user = (String)s.getAttribute("userName");
		if (s != null && !s.isNew() && user != null) {
			try {
				request.getRequestDispatcher("/maps.jsp").forward(request, response);
			}
			catch (HTTPException e) {}
		}
		else {
			response.sendRedirect("/cusp-orr-dev/");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
