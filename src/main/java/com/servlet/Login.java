package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Admin;
import com.services.AdminService;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Login() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try {
			Admin admin = new Admin();
			admin.setUserName(request.getParameter("username"));
			admin.setPassword(request.getParameter("password"));
			
			AdminService service = new AdminService();
			boolean status = service.validate(admin);
			
			if(status) {
				Admin loginad = service.getOne(admin);
				
				HttpSession session = request.getSession();
	            session.setAttribute("loginad", loginad);
	            
				RequestDispatcher dis = request.getRequestDispatcher("adminDataHome.jsp");
				request.setAttribute("loginad", loginad);
				dis.forward(request, response);
			} else {
			    request.setAttribute("error", "true");
			    RequestDispatcher dis = request.getRequestDispatcher("AdminLogin.jsp");
			    dis.forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}
