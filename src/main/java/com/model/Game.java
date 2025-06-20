package com.model;

public class Game {
	
	private int gameID;
	private String name;
	private String developer;
	private String category;
	private String description;
	private String price;
	private String image;
	
	
	public Game(int gameID, String name, String developer, String category, String description, String price,
			String image) {
		super();
		this.gameID = gameID;
		this.name = name;
		this.developer = developer;
		this.category = category;
		this.description = description;
		this.price = price;
		this.image = image;
	}


	public int getGameID() {
		return gameID;
	}


	public String getName() {
		return name;
	}


	public String getDeveloper() {
		return developer;
	}


	public String getCategory() {
		return category;
	}


	public String getDescription() {
		return description;
	}


	public String getPrice() {
		return price;
	}


	public String getImage() {
		return image;
	}
	
	
	
	
	
	
	
}
