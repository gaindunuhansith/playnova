package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Admin;
import com.services.AdminService;


@WebServlet("/AdminList")
public class AdminList extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AdminList() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			AdminService service = new AdminService();
			ArrayList<Admin> admin = service.getAllAdmins();
			
			request.setAttribute("admin", admin);
			
			RequestDispatcher dis = request.getRequestDispatcher("adminsTable.jsp");
			dis.forward(request, response);
			
			//response.sendRedirect("AdminList");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
	}

}
