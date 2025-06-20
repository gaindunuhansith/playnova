package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Admin;
import com.services.AdminService;


@WebServlet("/AddAdmin")
public class AddAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddAdmin() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Admin admin = new Admin();
			admin.setName(request.getParameter("name"));
			admin.setEmail(request.getParameter("email"));
			admin.setPhone(request.getParameter("phone"));
			admin.setRole(request.getParameter("role"));
			admin.setUserName(request.getParameter("username"));
			admin.setPassword(request.getParameter("password"));
			
			AdminService service = new AdminService();
			service.regAdmin(admin);
			
			//request.setAttribute("admin", admin);
			
			RequestDispatcher dis = request.getRequestDispatcher("AdminList");
			
			dis.forward(request, response);
			
			//response.sendRedirect("AdminList");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
