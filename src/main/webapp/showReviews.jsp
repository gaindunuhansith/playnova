<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<meta charset="UTF-8">
<title>Review Tiles</title>
<style>
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
	    background: rgba(0, 0, 0, 0.3);
	    backdrop-filter: blur(10px);
	    position: relative;
	    z-index: 10;
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
	
	.insertnew{
	  background: rgba(255, 255, 255, 0.05);
	  font-family: 'Rajdhani', sans-serif;
	  color: white;
	  font-weight:bold;
	  font-size:15px;
	  padding: 12px 24px;
	  margin: 20px 10px 0 20px;
	  border: 1px solid rgba(255, 255, 255, 0.1);
	  border-radius: 10px;
	  backdrop-filter: blur(6px);
	  transition: all 0.3s ease;
	  cursor: pointer;
	  box-shadow: 0 4px 12px rgba(0,0,0,0.2);
	  }
	
	.yourRev{
	  margin:20px 10px 0 10px;
	}
	  
	.insertnew:hover {
	  background: #e60000;
	  color: white;
	  transform: translateY(-2px);
	  box-shadow: 0 6px 18px rgba(230, 0, 0, 0.4);
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
	
	.search{
	  padding:30px;
	}
	
	#searchInput {
	  width: 100%;
	  max-width: 400px;
	  padding: 12px 20px;
	  font-size: 1rem;
	  font-family: 'Rajdhani', sans-serif;
	  color: #ff6666; 
	  background: rgba(0, 0, 0, 0.4);
	  backdrop-filter: blur(6px); 
	  border: 2px solid #990000;
	  border-radius: 12px;
	  box-shadow: 0 0 10px rgba(230, 0, 0, 0.7); 
	  transition: border-color 0.3s ease, box-shadow 0.3s ease, background 0.3s ease;
	  outline: none;
	  text-shadow: none; 
	}
	
	#searchInput::placeholder {
	  color: #e60000;
	  opacity: 1;
	  text-shadow: none; 
	  font-weight: 600;
	}
	
	#searchInput:focus {
	  border-color: #ff0000;
	  box-shadow: 0 0 14px #ff0000, 0 0 8px #cc0000;
	  background: rgba(0, 0, 0, 0.6);
	  color: #ff9999; 
	}
	.title-main {
	
	  font-size: 48px;
	  color: #fff;
	  text-align: left;
	  margin: 60px 20px 40px 50px;
	  text-transform: uppercase;
	  position: relative;
	  padding-bottom: 12px;
	}
	
	.tiles-container {
	  display: flex;
	  flex-wrap: wrap;
	  gap: 30px;
	  max-width: 1300px;
	  margin: 60px auto;
	  padding: 0 20px;
	  justify-content: center;
	}
	
	.tile {
	  background: rgba(255, 255, 255, 0.05);
	  backdrop-filter: blur(12px);
	  -webkit-backdrop-filter: blur(12px);
	  border-radius: 16px;
	  padding: 30px;
	  border: 1px solid rgba(255, 255, 255, 0.1);
	  width: 28%;
	  box-sizing: border-box;
	  position: relative;
	  transition: all 0.4s ease;
	  box-shadow:
	    0 8px 32px rgba(0, 0, 0, 0.3),
	    inset 0 1px 0 rgba(255, 255, 255, 0.05);
	}
	
	.tile:hover {
	  transform: translateY(-5px) scale(1.01);
	  box-shadow:
	    0 12px 40px rgba(0, 0, 0, 0.3),
	    inset 0 1px 0 rgba(255, 255, 255, 0.08);
	  border-color: rgba(255, 255, 255, 0.15);
	  background: rgba(255, 255, 255, 0.08);
	}
	
	.game-title {
	  font-size: 26px;
	  color: #fff;
	  margin-bottom: 24px;
	  padding-bottom: 12px;
	  font-weight: 600;
	  text-transform: uppercase;
	  letter-spacing: 0.5px;
	  position: relative;
	  background: linear-gradient(90deg, #e60000, #ff3333) bottom;
	  background-size: 100% 2px;
	  background-repeat: no-repeat;
	}
	
	.game-title::after {
	  content: '';
	  position: absolute;
	  bottom: 0;
	  left: 0;
	  height: 2px;
	  width: 0;
	  background: linear-gradient(90deg, #cc0000, #ff3333);
	  box-shadow: 0 0 4px #cc0000, 0 0 6px #ff3333;
	  transition: width 0.4s ease;
	  z-index: 2;
	}
	
	.tile:hover .game-title::after {
	  width: 100%;
	}
	
	.rating {
	  font-size: 16px;
	  margin-bottom: 16px;
	  padding: 8px 0;
	  border-left: 3px solid transparent;
	  padding-left: 12px;
	  transition: all 0.3s ease;
	  position: relative;
	  color: #ccc;
	}
	
	.rating:hover {
	  border-left-color: #e60000;
	  background: rgba(230, 0, 0, 0.05);
	  border-radius: 0 8px 8px 0;
	}
	
	.review-text {
	  font-size: 14px;
	  color: #ddd;
	  margin-bottom: 12px;
	  line-height: 1.6;
	}
	
	.username {
	  font-size: 13px;
	  color: #aaa;
	  text-align: right;
	  font-style: italic;
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
    <a href="home.jsp">Home</a>
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
	<div class="title-main">Reviews</div>
	
    <div class="search">
    <input type="text" id="searchInput" placeholder="Search...">
     <a href="ReviewInsertForm.jsp">
	        <button class="insertnew">Insert Review</button>
	    </a>
	    <a href="ReviewGetAllServlet">
	        <button class="insertnew yourRev">Your Reviews</button>
	    </a>
    </div>

    <div class="tiles-container" id="tileContainer">
        <c:forEach var="rev" items="${ReviewM}">
            <div class="tile">
                <div class="game-title">${rev.game}</div>
                <div class="rating">Rating: ${rev.rating}</div>
                <div class="review-text">${rev.review}</div>
                <div class="username">- ${rev.username}</div>
            </div>
        </c:forEach>
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


    <script>
        function filterTiles() {
            var input = document.getElementById("searchInput");
            var filter = input.value.toUpperCase();
            var container = document.getElementById("tileContainer");
            var tiles = container.getElementsByClassName("tile");

            for (var i = 0; i < tiles.length; i++) {
                var tileText = tiles[i].textContent || tiles[i].innerText;
                if (tileText.toUpperCase().indexOf(filter) > -1) {
                    tiles[i].style.display = "";
                } else {
                    tiles[i].style.display = "none";
                }
            }
        }

        document.getElementById("searchInput").addEventListener("input", filterTiles);
    </script>

</body>
</html>