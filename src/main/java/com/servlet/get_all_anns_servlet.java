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


@WebServlet("/get_all_anns_servlet")
public class get_all_anns_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<ann_model> allAnns = ann_control.getAllAnn();
		request.setAttribute("annall", allAnns);
		
		RequestDispatcher dispatcher= request.getRequestDispatcher("Ann_Details.jsp");
		dispatcher.forward(request, response);
		//response.sendRedirect("get_all_anns_servlet");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
