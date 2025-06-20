package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Game;
import com.services.GameServices;
import com.services.IGameService;


@WebServlet("/ManageGames")
public class ManageGames extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public ManageGames() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		IGameService gameServices = new GameServices();
		
		List<Game> allGames = gameServices.getAllGames();
		request.setAttribute("allGames", allGames);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("manage-games.jsp");
		dispatcher.forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
	}

}
