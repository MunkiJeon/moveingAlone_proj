package com.map.guest;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.map.ajax.AjaxService;

/**
 * Servlet implementation class GuestController
 */
@WebServlet("/guest/*")
public class GuestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public GuestController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String service = request.getRequestURI().substring((request.getContextPath()+"/guest/").length());
		request.setAttribute("config", "guest");
		try {
			GuestService as = (GuestService)Class.forName("com.map.guest."+service).newInstance();
			as.execute(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher rs = request.getRequestDispatcher("/view/template.jsp");
		rs.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
