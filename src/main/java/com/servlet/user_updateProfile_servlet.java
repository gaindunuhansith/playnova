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

@WebServlet("/user_updateProfile_servlet")
public class user_updateProfile_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String U_ID = request.getParameter("U_ID");
		String U_UserName = request.getParameter("U_UserName");
		String U_Email =  request.getParameter("U_Email");
		String U_PhoneNumber = request.getParameter("U_PhoneNumber");
		String U_Password =  request.getParameter("U_Password");
		
		boolean isTrue;
		isTrue = user_control.updateUserData(U_ID,U_UserName, U_Email, U_PhoneNumber, U_Password);
		
         if(isTrue == true) {
        	 
			List<user_model> userDetails=user_control.getById(U_ID);
			request.setAttribute("userDetails", userDetails);
			
			String alertMessage = "Data Updated Successfully.. !!";
			response.getWriter().println("<script> alert ('"+alertMessage+"'); window.location.href='user_profile_servlet'</script>");


		}else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);

		}
	}

}
