package com.cusporr.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.http.HTTPException;


@WebServlet("/results")
public class ShowResults extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ShowResults() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s = request.getSession();
		String user = (String)s.getAttribute("userName");
		
		if (s != null && !s.isNew() && user != null) {
			if (user.equals("Joe") || user.equals("Kate")) {
				try {
					request.getRequestDispatcher("/results.jsp").forward(request, response);
				}
				catch (HTTPException e) {}
			}
			else {
				try {
					request.getRequestDispatcher("/guestresults.jsp").forward(request, response);
				}
				catch (HTTPException e) {}
			}
		}
		else {
			response.sendRedirect("/cusp-orr-dev/");
		}
	}

}
