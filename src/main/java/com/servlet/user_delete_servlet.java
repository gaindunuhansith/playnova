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

@WebServlet("/user_delete_servlet")
public class user_delete_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String U_ID =request.getParameter("U_ID");
		boolean isTrue;
		isTrue=user_control.deleteData(U_ID);
		
		if(isTrue ==true) {
			
			String alertMessege="Data Deleted Successfully";
			response.getWriter().println("<script> alert ('"+alertMessege+"'); window.location.href='get_all_users_servlet' </script>");
		}
		else {
			
			List<user_model> userDetails=user_control.getById(U_ID);
			request.setAttribute("userDetails", userDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
