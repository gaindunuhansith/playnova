package com.servlet;

import java.io.IOException;


import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.user_model;
import com.services.user_control;

@WebServlet("/user_login_servlet")
public class user_login_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String U_Email =  request.getParameter("U_Email");
		String U_Password =  request.getParameter("U_Password");
		
		try {
			List<user_model> uLogin =user_control.loginValidate(U_Email, U_Password);
			
			if (uLogin != null && !uLogin.isEmpty()) {
				request.getSession().setAttribute("User",uLogin.get(0));
				HttpSession session = request.getSession();
                session.setAttribute("uLogin", uLogin);
				response.sendRedirect("user_profile_servlet");
			} else {
				String alertMessage = "Invalid Credentials. Please try again";
				response.getWriter().println("<script>alert('" + alertMessage + "'); window.location='user_login.jsp';</script>");
			}
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
