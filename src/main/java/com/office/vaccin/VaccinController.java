package com.office.vaccin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("*.vac")
public class VaccinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public VaccinController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		VaccinService vaccinService = null;
		String nextPage = null;
		
		switch(command) {
		case "/injection_registe_form.vac":
			
			nextPage = generateView("registe_form");
			
			break;
			
		case "/injection_registe_confirm.vac":
			break;
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}
	
	private String generateView(String viewName) {
		return "/view/vaccin/" + viewName + ".jsp";
	}

}
