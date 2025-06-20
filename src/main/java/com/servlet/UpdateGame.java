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


@WebServlet("/UpdateGame")
public class UpdateGame extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public UpdateGame() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("gameID");
		String name = request.getParameter("name");
		String developer = request.getParameter("developer");
		String category = request.getParameter("category");
		String description = request.getParameter("description");
		String price = request.getParameter("price");
		String image = request.getParameter("image");
		
		IGameService gameServices = new GameServices();
		boolean isTrue;
		
		isTrue = gameServices.updateGame(id, name, developer, category, description, price, image);
		
		if(isTrue == true) {
			List<Game> gameDetails = gameServices.getById(id);
			request.setAttribute("gameDetails", gameDetails);
			
			String alertMessage = "Data Updated Successfully!";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='ManageGames'</script>");
		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("fail.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
