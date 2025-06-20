package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.services.GameServices;
import com.services.IGameService;


@WebServlet("/AddGame")
public class AddGame extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String developer = request.getParameter("developer");
		String category = request.getParameter("category");
		String description = request.getParameter("description");
		String price = request.getParameter("price");
		String image = request.getParameter("image");
		
		IGameService gameServices = new GameServices();
		boolean isTrue;
		
		isTrue = gameServices.addGame(name, developer, category, description, price, image);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("ManageGames");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("fail.jsp");
			dis2.forward(request, response);
		}
		
	}

}
