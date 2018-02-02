package com.riquart.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.riquart.beans.TableauMultiplication;

/**
 * Servlet implementation class TableauMultiplication
 */
@WebServlet("/TableauMultiplication")
public class TableauMultiplicationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final static String VUE = "/WEB-INF/tableauMultiplication.jsp";

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TableauMultiplication table = new TableauMultiplication();
		
		if(request.getParameter("valeur") == null || request.getParameter("limite") == null){
			request.getServletContext().getRequestDispatcher(VUE).forward(request, response);
		} else {
			table.setValeur(Integer.parseInt((String) request.getParameter("valeur")));
			table.setLimite(Integer.parseInt((String) request.getParameter("limite")));
			table.getTable();			
			request.setAttribute("table", table);
			request.getServletContext().getRequestDispatcher(VUE).forward(request, response);
		}
			
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
