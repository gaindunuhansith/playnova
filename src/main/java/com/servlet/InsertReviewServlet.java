package com.servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.services.ReviewController;

import validationInterface.ReviewValidator;


@WebServlet("/InsertReviewServlet")
public class InsertReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String game = request.getParameter("game");
		float rating = Float.parseFloat(request.getParameter("rating"));
		String review = request.getParameter("review");
		//String Date = request.getParameter("Date");
		// LocalDate Date = LocalDate.parse(request.getParameter("getDate()"));
		
		ReviewValidator validator = new ReviewValidator(username, email, game, rating, review);

	    if (!validator.isValid()) {
	        request.setAttribute("error", validator.getErrorMessage());
	        request.getRequestDispatcher("ReviewInsertForm.jsp").forward(request, response);
	        return;
	    }
		
		boolean isTrue;
		
		isTrue = ReviewController.insertData(username, email, game, rating, review);
		
		if(isTrue == true) {
			String alertMessage = "Data Inserted Successfully.. !!";
			response.getWriter().println("<script> alert ('"+alertMessage+"'); window.location.href='getReviewHome'</script>");
			
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
