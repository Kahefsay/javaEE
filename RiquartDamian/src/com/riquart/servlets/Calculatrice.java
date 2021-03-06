package com.riquart.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Calculatrice extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nbre1 = request.getParameter("nbre1");
		String nbre2 = request.getParameter("nbre2");
		String methode = request.getParameter("operation");
		String result = null;
		
		if(nbre1 == "" || nbre2 == "" ) {
			result = "Veuillez saisir les champs";
		}  else {
			switch (methode) {
            case "plus":  
            	result = Integer.toString(Integer.parseInt(nbre1) + Integer.parseInt(nbre2));
                break;
            case "moins":  
            	result = Integer.toString(Integer.parseInt(nbre1) - Integer.parseInt(nbre2));
                break;
            case "multiplication":  
            	result = Integer.toString(Integer.parseInt(nbre1) * Integer.parseInt(nbre2));
                break;
            case "division":  
            	if(Integer.parseInt(nbre2) == 0) {
            		result = "Division par z�ro";
            	} else {
            		result = Integer.toString(Integer.parseInt(nbre1) / Integer.parseInt(nbre2));
            	}
            	break;
		}
				
		request.setAttribute("resultat", result);
		
		request.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
	
		}
	}
}

