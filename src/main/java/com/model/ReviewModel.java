package com.model;

public class ReviewModel {

	private int id;
	private String username;
	private String email;
	private String game;
	private float rating;
	private String review;
	private String date;
	
	public ReviewModel() {
		super();
		this.id = 0;
		this.username = null;
		this.email = null;
		this.game = null;
		this.rating = 0;
		this.review = null;
		this.date = null;
	}

	public ReviewModel(int id, String username, String email, String game, float rating, String review, String date) {
		super();
		this.id = id;
		this.username = username;
		this.email = email;
		this.game = game;
		this.rating = rating;
		this.review = review;
		this.date = date;
	}

	

	public String getDate() {
		return date; }

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGame() {
		return game;
	}

	public void setGame(String game) {
		this.game = game;
	}

	public float getRating() {
		return rating;
	}

	public void setRating(float rating) {
		this.rating = rating;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}
	
	
	
	
}
