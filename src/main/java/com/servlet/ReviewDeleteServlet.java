package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.model.ReviewModel;
import com.services.ReviewController;


@WebServlet("/ReviewDeleteServlet")
public class ReviewDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		boolean isTrue;
		isTrue = ReviewController.deletedata(id);
		if(isTrue == true) {
			String alertMessage = "Data Deleted Successfully.. !!";
			response.getWriter().println("<script> alert ('"+alertMessage+"'); window.location.href='ReviewGetAllServlet'</script>");
		}
		else {
			
			List<ReviewModel> reviewdetails = ReviewController.getById(id);
			request.setAttribute("reviewdetails", reviewdetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
