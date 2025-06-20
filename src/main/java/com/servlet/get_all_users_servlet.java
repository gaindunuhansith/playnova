package com.servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.user_model;
import com.services.user_control;

@WebServlet("/get_all_users_servlet")
public class get_all_users_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		List<user_model> allUsers = user_control.getAllUser();
		request.setAttribute("userall", allUsers);
		
		RequestDispatcher dispatcher= request.getRequestDispatcher("User_Details.jsp");
		dispatcher.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
			
		}

}
