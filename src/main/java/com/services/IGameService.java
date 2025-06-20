package com.services;

import java.util.List;
import com.model.Game;



public interface IGameService {
	
	boolean addGame(String name, String developer, String category, String description, String price, String image);

    List<Game> getById(String id);

    List<Game> getAllGames();

    boolean updateGame(String gameID, String name, String developer, String category, String description, String price, String image);

    boolean deleteGame(String gameID);
}
