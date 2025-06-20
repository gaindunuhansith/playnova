<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Game Details | pLaYNoVA</title>
  <link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;500;600&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
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
    }

    .nav-links {
      display: flex;
      gap: 30px;
    }

    .nav-links a {
      text-decoration: none;
      color: rgba(255, 255, 255, 0.6);
      font-size: 1.2rem;
      transition: color 0.3s ease;
    }

    .nav-links a:hover {
      color: white;
    }

    .glass-button, .signup-button {
      padding: 10px 20px;
      border-radius: 8px;
      font-size: 1rem;
      font-weight: 500;
      cursor: pointer;
    }

    .glass-button {
      background: rgba(255, 255, 255, 0.1);
      color: white;
      backdrop-filter: blur(8px);
      border: none;
      transition: background 0.3s, color 0.3s;
    }

    .glass-button:hover {
      background: white;
      color: black;
    }

    .signup-button {
      background: #e60000;
      color: white;
      border: none;
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
      font-size: 16px;
      margin-right: 10px;
    }

    .main {
      max-width: 1300px;
      margin: 40px auto 0 auto;
      padding: 0 20px;
    }

    .game-title {
      font-size: 48px;
      margin-bottom: 40px;
      text-transform: uppercase;
      color: white;
    }

    .game-layout {
      display: flex;
      flex-wrap: wrap;
      gap: 40px;
      align-items: flex-start;
    }

    .game-image {
      flex: 1 1 30%;
    }

    .game-image img {
      width: 600px;
  	  height: 300px;
      aspect-ratio: 2 / 3;
      object-fit: cover;
      border-radius: 12px;
      box-shadow: 0 8px 30px rgba(0, 0, 0, 0.6);
    }

    .card {
      background: rgba(255, 255, 255, 0.05);
      backdrop-filter: blur(12px);
      border-radius: 16px;
      padding: 20px;
      border: 1px solid rgba(255, 255, 255, 0.1);
      flex: 1 1 15%;
      box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
    }

    .title {
      font-size: 22px;
      margin-bottom: 20px;
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      position: relative;
      padding-bottom: 10px;
    }

    .title::after {
      content: '';
      position: absolute;
      bottom: 0;
      left: 0;
      height: 3px;
      width: 0;
      background: linear-gradient(90deg, #e60000, #ff3333);
      box-shadow: 0 0 6px #e60000, 0 0 10px #ff3333;
      transition: width 0.4s ease;
    }

    .card:hover .title::after {
      width: 100%;
    }

    .field {
      font-size: 14px;
      margin-bottom: 12px;
      padding-left: 10px;
      border-left: 3px solid transparent;
    }

    .field:hover {
      border-left-color: #e60000;
      background: rgba(230, 0, 0, 0.05);
    }

    .field span {
      font-weight: 600;
      color: #ff4d4d;
      display: inline-block;
      width: 100px;
      text-transform: uppercase;
    }

    .game-description {
      margin-top: 40px;
      font-size: 1.1rem;
      color: #ccc;
      line-height: 1.6;
    }

    .download-info {
      font-size: 0.9rem;
      color: rgba(255, 255, 255, 0.5);
      margin-top: 20px;
    }
    
    .buttons {
	  margin-top: 25px;
	  display: flex;
	  gap: 15px;
	  align-items: center;
	}
	
	.buy-now-btn {
	  background: #e60000;
	  color: white;
	  border: none;
	  padding: 12px 30px;
	  font-size: 1rem;
	  font-weight: 600;
	  border-radius: 8px;
	  cursor: pointer;
	  transition: background 0.3s ease;
	}
	
	.buy-now-btn:hover {
	  background: #cc0000;
	}
	
	.wishlist-btn {
	  background: rgba(255, 255, 255, 0.1);
	  border: none;
	  border-radius: 8px;
	  cursor: pointer;
	  padding: 10px 14px;
	  display: flex;
	  justify-content: center;
	  align-items: center;
	  color: white;
	  backdrop-filter: blur(8px);
	  transition: background 0.3s ease, color 0.3s ease;
	}
	
	.wishlist-btn:hover {
	  background: white;
	  color: #e60000;
	}
	
	.wishlist-btn svg {
	  stroke: currentColor;
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
	  color: #e60000; /* red hover */
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
      <button class="glass-button" onclick="location.href='user_profile_servlet'">👤</button>
      <button class="glass-button" onclick="location.href='userLogout'">Logout</button>
    <% } %>
  </div>
</header>

<div class="main">
  <c:forEach var="game" items="${gameDetails}">
    <div class="game-title">${game.name}</div>
    <div class="game-layout">
      <div class="game-image">
        <img src="${game.image}" alt="${game.name}" />
      </div>
      <div class="card">
        <div class="title">Game Info</div>
        <div class="field"><span>ID:</span> ${game.gameID}</div>
        <div class="field"><span>Name:</span> ${game.name}</div>
        <div class="field"><span>Developer:</span> ${game.developer}</div>
        <div class="field"><span>Category:</span> ${game.category}</div>
        <div class="field"><span>Price:</span> $${game.price}</div>
        <div class="buttons">
	  <button class="buy-now-btn">Buy Now</button>
	  <button class="glass-button wishlist-btn" title="Add to Wishlist">
	    <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" width="20" height="20" viewBox="0 0 24 24">
	      <path d="M20.8 4.6a5.5 5.5 0 0 0-7.8 0L12 5.6l-1-1a5.5 5.5 0 1 0-7.8 7.8l1 1L12 21.2l7.8-7.8 1-1a5.5 5.5 0 0 0 0-7.8z"/>
	    </svg>
	  </button>
	</div>
      </div>
    </div>
    <div class="game-description">${game.description}</div>
    <div class="download-info">
    Once your purchase is complete, your game will be available in your library for download. Simply log into your PlayNova account and navigate to "My Library" to begin the installation process. The library provides an organized view of all your purchased games, making it easy to find and manage your collection. You can sort your games by title, purchase date, or genre, ensuring quick access to your favorites.  
	Before downloading, ensure you have sufficient storage space on your device. Modern games often require significant storage, so it’s recommended to check the game’s system requirements beforehand. A stable internet connection is also essential for a smooth and uninterrupted download experience. If your connection is unstable, consider pausing other downloads or streaming activities to prioritize your game installation.  
	Payment for your purchase can be made securely via multiple methods, including credit cards, debit cards, and supported e-wallets. PlayNova uses advanced encryption to protect your financial information, ensuring safe and worry-free transactions. Once payment is confirmed, you’ll receive an email receipt with your order details, and the game will be immediately added to your library.  
	If you encounter any issues during the download or installation process, our support team is available 24/7 to assist you. Common problems may include slow download speeds, installation errors, or payment discrepancies. Our help center also provides step-by-step guides for troubleshooting, so you can resolve minor issues without delay.  
	Please note that all purchases on PlayNova are final and subject to our terms and conditions. We recommend reviewing these policies before completing your transaction to understand refund eligibility and other important details. If you have any questions, our customer service representatives are always ready to help.  
	We hope you enjoy your gaming experience with PlayNova. Whether you’re diving into an epic adventure, competing in multiplayer battles, or exploring indie gems, we’re committed to providing a seamless and enjoyable experience from purchase to play. Happy gaming!
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



</body>
</html>
