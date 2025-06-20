package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.services.AdminService;


@WebServlet("/adminDelete")
public class adminDelete extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public adminDelete() {
        super();
    }

   
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int adminId = Integer.parseInt(request.getParameter("id"));

        AdminService service = new AdminService();
        service.deleteAdmin(adminId);  
        
        //request.setAttribute("adminList", admin);
        
        RequestDispatcher dis = request.getRequestDispatcher("AdminList");
		dis.forward(request, response);
		
        //response.sendRedirect("AdminList");  
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doGet(request, response);
    }
}

