package com.formation.beans;

import javax.servlet.http.HttpServletRequest;

public class Identification {
	
	private String etat;
	private Boolean logged;

	public String getEtat() {
		return etat;
	}
	
	public void authentifier(HttpServletRequest req) {
		String pseudo = req.getParameter("pseudo");
		String password = req.getParameter("password");
		
		this.etat = "inconnu";
		
		if(pseudo != null && password != null && pseudo.length()>3) {
			if (password.equals(pseudo+"!")) {
				this.etat = "Utilisateur " + pseudo ;
			}
		}
	}
}
