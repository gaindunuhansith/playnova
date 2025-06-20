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


@WebServlet("/DeleteGame")
public class DeleteGame extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DeleteGame() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		IGameService gameServices = new GameServices();
		
		String gameID = request.getParameter("gameID");
		boolean isTrue;
		
		isTrue = gameServices.deleteGame(gameID);
		
		if(isTrue == true) {
			String alertMessage = "Game Deleted Successfully!";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='ManageGames'</script>");
			
		}
		else {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("fail.jsp");
			dispatcher.forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
	}

}
