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


@WebServlet("/getDeleteDataServlet")
public class getDeleteDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public getDeleteDataServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<ReviewModel> reviews = ReviewController.getAllReviews();
        request.setAttribute("reviewList", reviews);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("deleteReview.jsp");
        dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
