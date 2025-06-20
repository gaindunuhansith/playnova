package com.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.user_model;


@WebServlet("/user_profile_servlet")
public class user_profile_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request,response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Retrieve user information from session
		user_model User=(user_model) request.getSession().getAttribute("User");
		
		if(User != null) {
			//Forward user data to profile.jsp
			int id=User.getU_ID();
			
			request.setAttribute("User", User);
			request.getRequestDispatcher("user_profile.jsp").forward(request, response);
		}else {
			response.sendRedirect("user_login.jsp");
		}
		
	}
	
}
