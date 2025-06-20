package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.ann_model;
import com.services.ann_control;

@WebServlet("/ann_delete_servlet")
public class ann_delete_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String A_ID =request.getParameter("A_ID");
		boolean isTrue;
		isTrue=ann_control.deletedata(A_ID);
		
		if(isTrue ==true) {
			
			String alertMessege="Data Deleted Successfully";
			response.getWriter().println("<script> alert ('"+alertMessege+"'); window.location.href='get_all_anns_servlet' </script>");
		}
		else {
			
			List<ann_model> annDetails=ann_control.getById(A_ID);
			request.setAttribute("annDetails", annDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
			dispatcher.forward(request, response);
		}
	}

}
