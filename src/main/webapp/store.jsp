<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;600&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
	<link rel="stylesheet" href="style/store.css" />
	<title>Store</title>
	<style></style>

</head>
<body>
<%
    com.model.user_model user = (com.model.user_model) session.getAttribute("User");
%>

	<header class="header">
	  <div class="logo">
	    <img src="images/logo.png" alt="Play Nova Logo">
	  </div>
	
	  <nav class="nav-links">
	    <a href="home.jsp" >Home</a>
	    <a href="Store" style="color: #fff">Store</a>
	    <a href="display_ann_servlet">News</a>
	    <a href="faq.jsp">FAQ</a>
	    <a href="contact.jsp">Contact Us</a>
	  </nav>
	
	  <div class="auth-buttons">
	    <% if (user == null) { %>
	        <button class="glass-button" onclick="location.href='user_login.jsp'">Login</button>
	        <button class="signup-button" onclick="location.href='user_insert.jsp'">Sign Up</button>
	    <% } else { %>
	        <span class="welcome-text">Welcome back!</span>
	        <button class="glass-button" onclick="location.href='user_profile_servlet'" >👤
	        </button>
	        <button class="glass-button" onclick="location.href='userLogout'">Logout</button>
	    <% } %>
	  </div>
	</header>
	
 
	<div class="section-body">
	<section class="mega-sale-section">
	  <div class="mega-sale-content">
	    <div class="mega-sale-text">
	      <h2>The Epic Games MEGA Sale 2025</h2>
	      <p>Discover massive discounts on the biggest titles of the year. From blockbuster hits to indie gems, save big and play more during the Epic MEGA Sale.</p>
	    </div>
	    <div class="mega-sale-image">
	      <img src="images/mega-sale1.jpg" alt="Mega Sale 2025">
	    </div>
	  </div>
	</section>
		
	<h2 class="section-title"><i class="fa fa-binoculars" style="color: #e60000;"></i> Explore Games</h2>
	<div class="games-grid-modern">
	  <c:forEach var="game" items="${allGames}">
	    <div class="modern-game-container">
	      <div class="modern-game-thumb-wrapper">
	        <img src="${game.image}" alt="${game.name}" class="modern-game-thumb" />
	      </div>
	      <div class="modern-game-info">
	        <h3 class="modern-game-title">${game.name}</h3>
	        <p class="modern-game-studio">${game.developer}</p>
	        <div class="modern-game-footer">
	          <span class="modern-game-price">${game.price} $</span>
	          <button class="modern-learn-more" onclick="location.href='ViewGame?gameID=${game.gameID}'">Learn More</button>
	        </div>
	      </div>
	    </div>
	  </c:forEach>
	</div>
	
	
	
	<section class="reviews-section">
	  <h2 class="section-title">Player Reviews</h2>
	  <p class="section-motto">What our community is saying</p>
	  <div class="reviews-row">
	    
	    <div class="review-card">
	      <h3 class="review-username">GamerX99</h3>
	      <p class="review-game">CyberStrike</p>
	      <p class="review-text">Absolutely intense gameplay! The visuals and sound design are top-tier.</p>
	    </div>
	
	    <div class="review-card">
	      <h3 class="review-username">PixelMage</h3>
	      <p class="review-game">Void Whisper</p>
	      <p class="review-text">One of the most emotional journeys I've experienced in a game. Masterpiece!</p>
	    </div>
	
	    <div class="review-card">
	      <h3 class="review-username">L33tShadow</h3>
	      <p class="review-game">BattleRift</p>
	      <p class="review-text">Fast-paced action with deep strategy. I can't stop playing it with friends.</p>
	    </div>
	
	    <div class="review-card">
	      <h3 class="review-username">ArcadeQueen</h3>
	      <p class="review-game">Galaxy Drift</p>
	      <p class="review-text">Super fun arcade racer! Love the retro-futuristic vibe and music.</p>
	    </div>
	
	    
	  </div>
	</section>
	
	
</div>
	<footer class="site-footer">
	   <div class="footer-top">
	     <div class="footer-col">
	      <img src="images/logo.png" alt="PlayNova Logo" class="footer-logo" />
	      <p class="footer-desc">PlayNova is your portal to next-gen gaming. Explore, play, and experience the future of entertainment.</p>
	      <div class="social-icons">
	        <a href="#"><i class="fab fa-facebook-f"></i></a>
	        <a href="#"><i class="fab fa-twitter"></i></a>
	        <a href="#"><i class="fab fa-instagram"></i></a>
	        <a href="#"><i class="fab fa-youtube"></i></a>
	    </div>
	
	    </div>
	
	     <div class="footer-col">
	      <h3>Quick Links</h3>
	      <ul>
	        <li><a href="home.jsp">Home</a></li>
	        <li><a href="Store">Store</a></li>
	        <li><a href="aboutus.jsp">About Us</a></li>
	      </ul>
	    </div>
	
	     <div class="footer-col">
	      <h3>Support</h3>
	      <ul>
	        <li><a href="contact.jsp">Contact Us</a></li>
	        <li><a href="faq.jsp">FAQs</a></li>
	        <li><a href="t&c.jsp">Terms and Conditions</a></li>
	        <li><a href="p&p.jsp">Privacy Policy</a></li>
	      </ul>
	    </div>
	
	     <div class="footer-col">
	      <h3>Are you an Admin?</h3>
	      <ul>
	        <li><a href="AdminLogin.jsp">Admin Login</a></li>
	        <li><a href="AdminLogin.jsp">Admin Dashboard</a></li>
	        <li><a href="AdminLogin.jsp">Game Management</a></li>
	      </ul>
	    </div>
	  </div>
	
	 <div class="footer-bottom">
	  <p>&copy; 2025 PlayNova. All rights reserved. PlayNova is a trademark of PlayNova Studios. All content is protected under copyright law.</p>
	</div>
	
	</footer>
		
		
	 
</body>
</html>