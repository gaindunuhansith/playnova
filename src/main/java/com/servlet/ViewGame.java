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



@WebServlet("/ViewGame")
public class ViewGame extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
       
    
    public ViewGame() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String gameID = request.getParameter("gameID");
		
		IGameService gameServices = new GameServices();
		
		List<Game> gameDetails = gameServices.getById(gameID);
		request.setAttribute("gameDetails", gameDetails);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("view-game.jsp");
		dispatcher.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
