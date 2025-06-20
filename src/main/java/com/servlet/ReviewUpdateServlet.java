package com.servlet;

import java.io.IOException;
//import java.time.LocalDate;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.model.ReviewModel;
import com.services.ReviewController;

import validationInterface.ReviewValidator;


 
@WebServlet("/ReviewUpdateServlet")
public class ReviewUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String game = request.getParameter("game");
		float rating = Float.parseFloat(request.getParameter("rating"));
		String review = request.getParameter("review");
		
		ReviewValidator validator = new ReviewValidator(username, email, game, rating, review);

	    if (!validator.isValid()) {
	        request.setAttribute("error", validator.getErrorMessage());
	        request.getRequestDispatcher("reviewupdate.jsp").forward(request, response);
	        return;
	    }
		
		boolean isTrue;
		
		isTrue = ReviewController.updatedata(id, username, email, game, rating, review);
		
		if(isTrue == true) {
			List<ReviewModel> Review = ReviewController.getById(id);
			request.setAttribute("review", Review);
			
			String alertMessage = "Data Updated Successfully.. !!";
			response.getWriter().println("<script> alert ('"+alertMessage+"'); window.location.href='ReviewGetAllServlet'</script>");
			
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
		
	}

}
