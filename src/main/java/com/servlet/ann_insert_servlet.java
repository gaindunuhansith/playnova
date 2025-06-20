package com.servlet;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.services.ann_control;

@WebServlet("/ann_insert_servlet")
public class ann_insert_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String A_Title = request.getParameter("A_Title");
		String A_Description =  request.getParameter("A_Description");
		String A_GameName = request.getParameter("A_GameName");
		String A_RelDate =  request.getParameter("A_RelDate");
		String A_GCategory =  request.getParameter("A_GCategory");
		String A_GOwner =  request.getParameter("A_GOwner");

		boolean isTrue;
		isTrue = ann_control.insertdata(A_Title, A_Description, A_GameName, A_RelDate,A_GCategory,A_GOwner);

		if(isTrue == true) {
			
			String alertMessage = "Data Inserted Successfully.. !!";
			response.getWriter().println("<script> alert ('"+alertMessage+"'); window.location.href='get_all_anns_servlet' </script>");

		}else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}

	}
	

}
