<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Play Nova</title>
  <link rel="stylesheet" href="home.css" />
  <link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  
  <style >
	body {
	  margin: 0;
	  font-family: 'Rajdhani', sans-serif;
	  background: linear-gradient(to bottom right, #000000, #1a1a1a);
	  color: white;
	}
	
	 .header {
	  display: flex;
	  justify-content: space-between;
	  align-items: center;
	  padding: 20px 50px;
	  background: transparent;
	  backdrop-filter: blur(10px);
	  position: absolute;
	  top: 0;
	  left: 0;
	  right: 0;
	  z-index: 10;
	}
	
	 .logo {
	  font-size: 1.8rem;
	  font-weight: 600;
	  color: white;
	}
	
	.logo img {
	  height: 40px; 
	  display: block;
	}
	
	
	 .nav-links {
	  display: flex;
	  gap: 30px;
	}
	
	.nav-links a {
	  color: white;
	  font-weight: bold;
	  text-decoration: none;
	  font-size: 1.1rem;
	  transition: color 0.3s ease;
	}
	
	.nav-links a:hover {
	  color: #1e90ff;
	}
	
	.nav-links a {
	  text-decoration: none;
	  color: rgba(255, 255, 255, 0.6);
	  font-weight: 500;
	  font-size: 1.2rem;  
	  transition: color 0.3s ease;
	}
	
	.nav-links a:hover {
	  color: white;
	}
	
	
	 .glass-button {
	  padding: 10px 20px;
	  border: none;
	  border-radius: 8px;
	  background: rgba(255, 255, 255, 0.1);
	  color: white;
	  cursor: pointer;
	  backdrop-filter: blur(8px);
	  transition: background 0.3s, color 0.3s;
	  font-size: 1rem;
	  font-weight: 500;
	}
	
	.glass-button:hover {
	  background: white;
	  color: black;
	}
	
	 .signup-button {
	  background: #e60000;
	  color: white;
	  border: none;
	  border-radius: 8px;
	  padding: 10px 20px;
	  font-size: 1rem;
	  font-weight: 500;
	  cursor: pointer;
	  transition: background 0.3s;
	}
	
	.signup-button:hover {
	  background: #cc0000;
	}
	
	.auth-buttons {
	  display: flex;
	  align-items: center;
	  gap: 10px;
	}
	
	.welcome-text {
	  color: white;
	  font-family: 'Rajdhani', sans-serif;
	  font-size: 16px;
	  line-height: 1;
	}
	
	 .banner {
	  position: relative;
	  width: 100%;
	  height: 80vh;
	  background: url('images/oo.jpg') no-repeat center center/cover;
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  text-align: center;
	}
	
	 .banner-content {
	  position: relative;
	  z-index: 2;
	  display: flex;
	  flex-direction: column;
	  align-items: center;
	  justify-content: center;
	  color: white;
	  padding: 0 20px;
	}
	
	 .banner-content h1 {
	  font-size: 4rem;
	  font-weight: 600;
	  margin-bottom: 20px;
	}
	
	 .banner-motto {
	  font-size: 1.5rem;
	  font-weight: 500;
	  margin-bottom: 30px;
	  color: #ffffff;
	  opacity: 0.85;
	}
	
	 .banner-buttons {
	  display: flex;
	  gap: 15px;
	  flex-wrap: wrap;
	}
	
	 .banner-btn {
	  padding: 14px 28px;
	  font-size: 1.1rem;
	  font-weight: 600;
	  border-radius: 8px;
	  border: none;
	  cursor: pointer;
	  transition: background 0.3s, color 0.3s, border 0.3s;
	}
	
	 .red-btn {
	  background-color: #e60000;
	  color: white;
	}
	
	.red-btn:hover {
	  background-color: #cc0000;
	}
	
	 .outline-red-btn {
	  background: transparent;
	  color: #e60000;
	  border: 2px solid #e60000;
	}
	
	.outline-red-btn:hover {
	  background-color: #e60000;
	  color: white;
	}
	
	 .trending-section {
	  padding: 60px 40px;
	  text-align: center;
	  background: linear-gradient(to bottom, rgba(0, 0, 0, 0.9), rgba(20, 20, 20, 1));
	  color: white;
	}
	
	.section-title {
	  font-size: 2.5rem;
	  margin-bottom: 40px;
	  font-weight: 600;
	}
	
	 .game-cards {
	  display: flex;
	  justify-content: center;
	  gap: 30px;
	  flex-wrap: wrap;
	}
	
	 .game-card {
	  background: rgba(255, 255, 255, 0.03);
	  backdrop-filter: blur(8px);
	  border-radius: 16px;
	  overflow: hidden;
	  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.4);
	  width: 300px;
	  transition: transform 0.3s ease, box-shadow 0.3s ease;
	}
	
	.game-card:hover {
	  transform: translateY(-10px);
	  box-shadow: 0 15px 25px rgba(0, 0, 0, 0.6);
	}
	
	 .game-image {
	  width: 100%;
	  height: 280px;
	  object-fit: cover;
	}
	
	 .game-info {
	  padding: 20px;
	  text-align: left;
	}
	
	.game-info h3 {
	  font-size: 1.4rem;
	  margin-bottom: 10px;
	}
	
	.game-info p {
	  font-size: 1rem;
	  color: #cccccc;
	}
	
	
	 
	    .news-grid {
	  position: relative;
	  display: grid;
	  grid-template-columns: 1fr 1fr;
	  gap: 40px;
	  margin-top: 80px;
	  padding: 20px;
	  z-index: 1;
	  color: #fff;
	}
	
	.news-grid h2{
	  color: red;
	}
	
	 .news-grid::before {
	  content: '';
	  position: absolute;
	  top: 0; left: 0; right: 0; bottom: 0;
	  background-image: url('images/pexels-lalesh-194511.jpg'); /* Your image path */
	  background-size: cover;
	  background-position: center;
	  filter: blur(5px);
	  opacity: 0.7;
	  z-index: -1;
	}
	
	 .news-left {
	  position: relative;
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  border-radius: 10px;
	  min-height: 550px;
	}
	
	.overlay-text {
	  text-align: center;
	  padding: 20px;
	  border-radius: 10px;
	  font-size:180%;
	}
	
	.news-right {
	  display: flex;
	  flex-direction: column;
	  gap: 20px;
	}
	
	.news-right h2 {
	  margin-bottom: 10px;
	  color: red;
	  font-size:30px;
	}
	
	.news-right article {
	  background-color: #1a1a1a;
	  padding: 20px;
	  border: 2px solid #333;
	  border-radius: 10px;
	  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
	  transition: transform 0.3s ease, box-shadow 0.3s ease, border-color 0.3s ease;
	}
	
	.news-right article:hover {
	  transform: scale(1.03);
	
	}
	
	.news-right h3 {
	  color:white;
	  margin-bottom: 5px;
	}
	
	
	 .reviews-section {
	  padding: 60px 40px;
	  text-align: center;
	  background: #0f0f0f;
	  color: white;
	}
	
	.reviews-section .section-title {
	  font-size: 2.5rem;
	  margin-bottom: 10px;
	  font-weight: 600;
	}
	
	.reviews-section .section-motto {
	  font-size: 1.3rem;
	  font-weight: 800;
	  color: #e60000;  
	  margin-bottom: 40px;
	}
	
	
	 .reviews-row {
	  display: flex;
	  justify-content: center;
	  flex-wrap: wrap;
	  gap: 30px;
	}
	
	 .review-card {
	  background: rgba(255, 255, 255, 0.03);
	  backdrop-filter: blur(6px);
	  border-radius: 16px;
	  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.4);
	  padding: 20px 18px;
	  width: 240px;
	  text-align: left;
	  transition: transform 0.3s ease, box-shadow 0.3s ease;
	}
	
	.review-card:hover {
	  transform: translateY(-6px);
	  box-shadow: 0 15px 25px rgba(0, 0, 0, 0.5);
	}
	
	.review-username {
	  font-size: 1.2rem;
	  font-weight: 600;
	  margin-bottom: 5px;
	}
	
	.review-game {
	  font-size: 0.85rem;
	  color: #aaa;
	  margin-bottom: 10px;
	}
	
	.review-text {
	  font-size: 0.95rem;
	  color: #ddd;
	  line-height: 1.4;
	}
	
	
	 .site-footer {
	  background: linear-gradient(to bottom, #1a1a1a, #111);  
	  color: #eee;
	  font-family: 'Rajdhani', sans-serif;
	  padding-top: 60px;
	  margin-top: 60px;
	}
	
	 .footer-top {
	  display: flex;
	  flex-wrap: wrap;
	  justify-content: space-between;
	  gap: 40px;
	  padding: 0 40px 40px;
	  border-bottom: 1px solid rgba(255, 255, 255, 0.07);  
	}
	
	 .footer-col {
	  flex: 1 1 200px;
	  min-width: 200px;
	}
	
	.footer-logo {
	  width: 140px;
	  margin-bottom: 8px;  
	}
	
	.footer-desc {
	  margin-top: 5px;
	  margin-bottom: 15px;
	  font-size: 0.95rem;
	  color: #ccc;
	  line-height: 1.5;
	}
	
	 .social-icons a {
	  color: rgba(255, 255, 255, 0.4);  
	  font-size: 1.1rem;
	  margin-right: 12px;
	  transition: color 0.3s ease;
	  text-decoration: none;
	}
	
	.social-icons a:hover {
	  color: #e60000;  
	}
	
	 .footer-col h3 {
	  margin-bottom: 15px;
	  font-size: 1.2rem;
	  color: white;
	}
	
	 .footer-col ul {
	  list-style: none;
	  padding: 0;
	  margin: 0;
	}
	
	.footer-col ul li {
	  margin-bottom: 10px;
	}
	
	.footer-col ul li a {
	  color: #ccc;
	  text-decoration: none;
	  font-size: 0.95rem;
	  transition: color 0.3s;
	}
	
	.footer-col ul li a:hover {
	  color: #e60000;  
	}
	
	 .footer-bottom {
	  text-align: center;
	  padding: 25px 10px;
	  font-size: 0.95rem;
	  color: #aaa;
	  line-height: 1.6;
	  max-width: 900px;
	  margin: 0 auto;
	  border-top: 1px solid rgba(255, 255, 255, 0.05); 
	}
	  
	  .prof-btn{
	  	 padding: 10px 20px;
	  border: none;
	  border-radius: 8px;
	  background: rgba(255, 255, 255, 0.1);
	  color: white;
	  cursor: pointer;
	  backdrop-filter: blur(8px);
	  transition: background 0.3s, color 0.3s;
	  font-size: 1rem;
	  font-weight: 500;
	  
	  }
	  .prof-btn:hover {
	  background: white;
	  color: black;
	}
	
	.carousel-section {
	  position: relative;
	  width: 100%;
	  height: 85vh; /* makes it taller */
	  overflow: hidden;
	  font-family: 'Rajdhani', sans-serif;
	}
	
	.carousel-container {
	  display: flex;
	  transition: transform 0.8s ease-in-out;
	  height: 100%;
	}
	
	.carousel-slide {
	  min-width: 100%;
	  height: 100%;
	  background-size: cover;
	  background-position: center;
	  position: relative;
	  display: none;
	}
	
	.carousel-slide.active {
	  display: block;
	  animation: fadeIn 1s ease-in-out;
	}
	
	@keyframes fadeIn {
	  from { opacity: 0.4; }
	  to { opacity: 1; }
	}
	
	.carousel-overlay {
	  position: absolute;
	  top: 0;
	  left: 0;
	  width: 100%;
	  height: 100%;
	  background: linear-gradient(to right, rgba(0,0,0,0.6) 40%, rgba(0,0,0,0) 100%);
	  display: flex;
	  align-items: center;
	  padding-left: 5%;
	  box-sizing: border-box;
	}
	
	.carousel-text {
	  color: #fff;
	  max-width: 500px;
	  text-align: center;
	}
	
	.carousel-text h1 {
	  font-size: 3rem;
	  margin-bottom: 10px;
	}
	
	.carousel-text p {
	  font-size: 1.2rem;
	  line-height: 1.6;
	}
	
	/* Dots */
	.carousel-dots {
	  position: absolute;
	  bottom: 20px;
	  left: 50%;
	  transform: translateX(-50%);
	  display: flex;
	  gap: 10px;
	  z-index: 5;
	}
	
	.carousel-dots .dot {
	  width: 12px;
	  height: 12px;
	  border-radius: 50%;
	  background-color: rgba(255, 255, 255, 0.4);
	  cursor: pointer;
	  transition: background-color 0.3s ease;
	}
	
	.carousel-dots .dot.active {
	  background-color: #ff3c3c;
	}
	
	.carousel-buttons {
	  margin-top: 25px;
	  display: flex;
	  gap: 15px;
	  justify-content: center; /* ⬅ center horizontally */
	}
	
	
	.carousel-buttons {
	  margin-top: 25px;
	}
	
	.glass-watch-btn {
	  padding: 14px 36px;
	  border-radius: 35px;
	  background: rgba(255, 255, 255, 0.15);
	  color: #fff;
	  border: 1.5px solid rgba(255, 255, 255, 0.35);
	  backdrop-filter: blur(10px);
	  -webkit-backdrop-filter: blur(10px);
	  font-weight: 700;
	  font-size: 1.2rem;
	  display: inline-flex;
	  align-items: center;
	  gap: 12px;
	  cursor: pointer;
	  transition: background 0.3s ease;
	}
	
	.glass-watch-btn i {
	  color: #000;
	  background: #fff;
	  border-radius: 50%;
	  padding: 16px 44px;
	  font-size: 1.3rem;  
	}
	
	.glass-watch-btn:hover {
	  background: rgba(255, 255, 255, 0.3);
	}
 
  </style>
  
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
    <a href="home.jsp" style="color: #fff">Home</a>
    <a href="Store">Store</a>
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

<section class="carousel-section">
  <div class="carousel-container">
    <div class="carousel-slide" style="background-image: url('https://www.riotgames.com/darkroom/2000/7c089cdb1ddd638b048226a0eb216f5b:f9b213af16bd2f62a9d8e30e18033295/vct25-masters-toronto-homepage-banner-background-brightened-2.png');">
      <div class="carousel-overlay">
        <div class="carousel-text">
          <h1>VALORANT MASTERS TORONTO</h1>
          <p>Watch the top 12 teams battle it out to see who seizes their moment and crowns themselves the winners of VALORANT Masters Toronto, June 7-22.</p>
        	<div class="carousel-buttons">
			  <button class="glass-watch-btn">
			    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="play-icon">
	          <polygon points="5 3 19 12 5 21 5 3"></polygon>
	        </svg> Watch Now
			  </button>
			</div>
        </div>
      </div>
    </div>

    <div class="carousel-slide" style="background-image: url('https://www.riotgames.com/darkroom/2000/df960db817b32356862879b01b382f6d:b56ee6280d16c230f5cd7ed96d96aaa1/holx25-uzi-documentary-riot-games-website-banner-asset-3840-x-1600-4.jpg');">
      <div class="carousel-overlay">
        <div class="carousel-text">
          <h1>Hall of Legends: Uzi</h1>
          <p>Celebrate a career that had a legendary impact on the game, the sport, and the worldwide community.</p>
        	<div class="carousel-buttons">
			  <button class="glass-watch-btn">
			    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="play-icon">
	          <polygon points="5 3 19 12 5 21 5 3"></polygon>
	        </svg> Watch Now
			  </button>
			</div>
        </div>
      </div>
    </div>
  </div>
  <div class="carousel-dots">
  <span class="dot active" onclick="setSlide(0)"></span>
  <span class="dot" onclick="setSlide(1)"></span>
</div>
  
</section>



 <section class="trending-section">
  <h2 class="section-title">Latest Trending</h2>
  <div class="game-cards">
     <div class="game-card">
      <img src="images/game-1.jpg" alt="Unocorn World" class="game-image">
      <div class="game-info">
        <h3>Unocorn World</h3>
        <p>Battle futuristic enemies in this action packed shooter</p>
      </div>
    </div>

     <div class="game-card">
      <img src="images/game-3.jpg" alt="The Witcher 3" class="game-image">
      <div class="game-info">
        <h3>The Witcher 3</h3>
        <p>Explore enchanted lands filled with magic and mystery</p>
      </div>
    </div>

     <div class="game-card">
      <img src="images/game-2.jpg" alt="Valorant" class="game-image">
      <div class="game-info">
        <h3>Valorant</h3>
        <p>Race through action packed 5 vs 5 adventure</p>
      </div>
    </div>

    <div class="game-card">
      <img src="images/game-4.jpg" alt="Eldern Ring" class="game-image">
      <div class="game-info">
        <h3>Eldern Ring</h3>
        <p>Explore enchanted lands filled with magic and mystery</p>
      </div>
    </div>

  </div>
</section>


<section class="news-grid">
          <div class="news-left">
            <div class="overlay-text">
              <h2>Stay Updated</h2>
              <p>Breaking news and trending topics from GameVerse.</p>
            </div>
          </div>
        
          <div class="news-right">
            <h2>Latest News</h2>
            <article>
              <h3>CyberStrike Season 2 Launches</h3>
              <p>New weapons, maps, and a battle pass are here. Get ready to dive in!</p>
            </article>
            <article>
              <h3>Top 10 Indie Games This Month</h3>
              <p>We explore the most innovative and fun indie titles of the season.</p>
            </article>
            <article>
              <h3>Top 10 Indie Games This Month</h3>
              <p>We explore the most innovative and fun indie titles of the season.</p>
            </article>
          </div>
        </section>

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

  <div class="review-more">
      <form action="getReviewHome" method="post">
      <button type="submit" class="signup-button" style="margin-top: 20px;">All reviews </button>
      </form>
  </div>
  
</section>




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

<script>
const slides = document.querySelectorAll('.carousel-slide');
const dots = document.querySelectorAll('.dot');
let currentIndex = 0;
let intervalTime = 4500; // 6 seconds
let carouselInterval;

function showSlide(index) {
  slides.forEach((slide, i) => {
    slide.classList.remove('active');
    dots[i].classList.remove('active');
  });
  slides[index].classList.add('active');
  dots[index].classList.add('active');
  currentIndex = index;
}

function nextSlide() {
  let nextIndex = (currentIndex + 1) % slides.length;
  showSlide(nextIndex);
}

function setSlide(index) {
  showSlide(index);
  resetInterval();
}

function startInterval() {
  carouselInterval = setInterval(nextSlide, intervalTime);
}

function resetInterval() {
  clearInterval(carouselInterval);
  startInterval();
}

startInterval();
</script>

</body>
</html>