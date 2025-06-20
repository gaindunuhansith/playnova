<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <%
    if (session.getAttribute("uLogin") == null) {
        response.sendRedirect("user_login.jsp");
        return;}
%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>User Profile - PlayNova</title>
  <link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;500;600;700&display=swap" rel="stylesheet"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
  <style>
     @import url('https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;500&display=swap');
  
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Rajdhani', sans-serif;
      background: linear-gradient(to bottom right, #000000, #1a1a1a);
      color: white;
      min-height: 100vh;
    }

	    .container {
	      width: 100%;
	      padding: 20px;
	    }
	
	   .header {
	  display: flex;
	  justify-content: space-between;
	  align-items: center;
	  padding: 0px 20px 20px 20px;
	  background: rgba(0, 0, 0, 0.3);
	  backdrop-filter: blur(10px);
	  position: relative;
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
	
	.auth-buttons {
	  display: flex;
	  gap: 15px;
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
	
	
	
	   .logout-btn {
	  background: rgba(255, 255, 255, 0.1);
	  color: white;
	  border: 1px solid #444;
	  border-radius: 8px;
	  padding: 10px 20px;
	  font-size: 1rem;
	  font-weight: 600;
	  display: flex;
	  align-items: center;
	  gap: 8px;
	  cursor: pointer;
	  backdrop-filter: blur(6px);
	  text-decoration: none;
	  transition: all 0.3s ease;
	}
	
	.logout-btn:hover {
	  background: #e60000;
	  color: white;
	  border-color: #e60000;
	}

    .profile-card {
      background: none;
      border-radius: 16px;     
      padding: 30px;
      margin-bottom: 30px;
      width: 100%;
      position: relative;
    }

    .profile-content {
      display: flex;
      justify-content: space-between;
      align-items: center;
      flex-wrap: wrap;
      gap: 20px;
    }

    .left-info {
      display: flex;
      flex-direction: column;
      align-items: flex-start;
      position: relative;
    }

    .initial {
      width: 130px;
      height: 130px;
      border-radius: 50%;
      background-color: #333;
      color: white;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 3.5rem;
      font-weight: bold;
      margin-bottom: 15px;
      position: relative;
    }

    .edit-btn {
      position: absolute;
      bottom: 8px;
      right: 8px;
      background-color: #e60000;
      color: white;
      border: none;
      border-radius: 50%;
      padding: 6px;
      font-size: 0.9rem;
      cursor: pointer;
    }

    .edit-btn:hover {
      background-color: #cc0000;
    }

    .greeting {
      font-size: 2.3rem;
      font-weight: 700;
      margin-bottom: 20px;
    }

    .details {
      font-size: 1.3rem;
    }

    .detail-item {
      margin-bottom: 10px;
    }

    .label {
      color: #aaa;
      margin-right: 8px;
    }

    .right-buttons {
      display: flex;
      flex-direction: column;
      gap: 12px;
    }

    .btn-danger {
      background: #e60000;
      color: white;
      border: none;
      padding: 12px 16px;
      border-radius: 8px;
      font-family: 'Rajdhani', sans-serif;
      font-weight: 600;
      font-size: 1.1rem;
      cursor: pointer;
      display: flex;
      align-items: center;
      gap: 8px;
      position: absolute;
      top: 20px;
      right: 20px;
    }

    .btn-danger:hover {
      background: #cc0000;
    }

    .game-library {
      background: rgba(20, 20, 20, 0.7);
      border-radius: 16px;
      padding: 24px;
      border: 1px solid #333;
      box-shadow: 0 10px 20px rgba(0, 0, 0, 0.4);
    }

    .library-header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 24px;
    }

    .library-title {
      font-size: 2rem;
      font-weight: 600;
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .view-all {
      color: #e60000;
      text-decoration: none;
      display: flex;
      align-items: center;
      font-weight: 500;
    }

    .view-all:hover {
      color: #cc0000;
    }

    .games-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 35px;
      
    }

    .game-card {
      background: rgba(0, 0, 0, 0.5);
      border-radius: 12px;
      overflow: hidden;
      border: 1px solid #333;
      transition: all 0.3s ease;
      position: relative;
    }

    .game-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 10px 25px rgba(230, 0, 0, 0.2);
    }

    .game-image-container {
      position: relative;
      width: 100%;
      aspect-ratio: 9 / 12;
      overflow: hidden;
    }

    .game-image {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 0.3s ease;
    }

    .game-card:hover .game-image {
      transform: scale(1.05);
    }

    .game-overlay {
      position: absolute;
      inset: 0;
      background: linear-gradient(to top, rgba(0, 0, 0, 0.8), transparent);
      display: flex;
      align-items: flex-end;
      padding: 12px;
    }

   
    .purchase-fee {
      background: #e60000;
      color: white;
      font-weight: 700;
      font-size: 1.1rem;
      padding: 6px 12px;
      border-radius: 6px;
      user-select: none;
    }

    .game-info {
      padding: 16px;
    }

    .game-title {
      font-size: 1.3rem;
      font-weight: 600;
      margin-bottom: 4px;
    }

    .game-description {
      color: #aaa;
      font-size: 1rem;
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
	
	.profile-banner {
	  background-image: url('images/banner-img.jpg');
	  background-position: center;
	  background-repeat: no-repeat;
	  background-size: cover; 
	  padding: 40px 20px;
	  border-radius: 16px; 
	  margin-bottom: 30px;
	  display: flex;
	  justify-content: center; /
	}


    
  </style>
</head>
<body>
  <div class="container">

   <header class="header">
  <div class="logo">
    <a href="home.jsp"><img src="images/logo.png" alt="Play Nova Logo"></a>
  </div>

  <nav class="nav-links">
    <a href="home.jsp">Home</a>
    <a href="Store">Store</a>
    <a href="display_ann_servlet">News</a>
    <a href="faq.jsp">FAQ</a>
    <a href="contact.jsp">Contact Us</a>
  </nav>

  <div class="auth-buttons">
    <a href="userLogout" class="logout-btn" onclick="return confirm('Are you sure you want to leave this account?')"><i class="fas fa-sign-out-alt"></i>Logout</a>
  </div>
  
</header>
	<div class="profile-banner">
	    <div class="profile-card">
	      <div class="profile-content">
	        <div class="left-info">
	          <div class="initial">
	           
	            <i class="fa fa-user-circle" ></i>
	             <form action="user_update.jsp" method="post">
								    <input type="hidden" name="U_ID" value="${User.u_ID}">
								    <input type="hidden" name="U_UserName" value="${User.u_UserName}">
								    <input type="hidden" name="U_Email" value="${User.u_Email}">
								    <input type="hidden" name="U_PhoneNumber" value="${User.u_PhoneNumber}">
								    <input type="hidden" name="U_Password" value="${User.u_Password}">
								    <input type="submit" value="✎" class="edit-btn" onclick="return confirm('Are you sure you want to update your account?')">
								</form>
	          </div>
	          <div class="greeting">Welcome, <span style="color: red;">${User.u_UserName}</span></div>
	          <div class="details">
	            <div class="detail-item"><span class="label">ID:</span><span>${User.u_ID}</span></div>
	            <div class="detail-item"><span class="label">User Name:</span><span>${User.u_UserName}</span></div>
	            <div class="detail-item"><span class="label">Email:</span><span>${User.u_Email}</</span></div>
	            <div class="detail-item"><span class="label">Phone No:</span><span>${User.u_PhoneNumber}</span></div>
	          </div>
	        </div>
	       
	        	<form action="user_delete_servlet" method="post">
				                <input type="hidden" name="U_ID" value="${User.u_ID}">
				                <button class="btn-danger" onclick="return confirm('Are you sure you want to delete this account?')">Delete Your Account</button>
				                </form>
              			        
	        	
	        
	      </div>
	    
	  </div>
	</div>
    

    <div class="game-library">
      <div class="library-header">
        <h2 class="library-title"><i class="fas fa-gamepad" style="color: #e60000;"></i> Game Library</h2>
        <a href="Store" class="view-all">View All <i class="fas fa-chevron-right"></i></a>
      </div>
      <div class="games-grid">
        
        <div class="game-card">
          <div class="game-image-container">
            <img class="game-image" src="images/game-1.jpg" alt="Game 1">
            <div class="game-overlay"><div class="purchase-fee">Play</div></div>
          </div>
          <div class="game-info">
            <div class="game-title">Battle Quest</div>
            <div class="game-description">Fight monsters and gain glory.</div>
          </div>
        </div>
        <div class="game-card">
          <div class="game-image-container">
            <img class="game-image" src="images/game-2.jpg" alt="Game 2">
            <div class="game-overlay"><div class="purchase-fee">Play</div></div>
          </div>
          <div class="game-info">
            <div class="game-title">Galaxy Racer</div>
            <div class="game-description">High-speed racing in space.</div>
          </div>
        </div>
        <div class="game-card">
          <div class="game-image-container">
            <img class="game-image" src="images/game-3.jpg" alt="Game 3">
            <div class="game-overlay"><div class="purchase-fee">Play</div></div>
          </div>
          <div class="game-info">
            <div class="game-title">Mind Maze</div>
            <div class="game-description">Solve puzzles and find the exit.</div>
          </div>
        </div>
        <div class="game-card">
          <div class="game-image-container">
            <img class="game-image" src="images/game-4.jpg" alt="Game 4">
            <div class="game-overlay"><div class="purchase-fee">Play</div></div>
          </div>
          <div class="game-info">
            <div class="game-title">Zombie Siege</div>
            <div class="game-description">Defend against the undead horde.</div>
          </div>
        </div>

        <div class="game-card">
          <div class="game-image-container">
            <img class="game-image" src="images/game-5.jpg" alt="Game 5">
            <div class="game-overlay"><div class="purchase-fee">Play</div></div>
          </div>
          <div class="game-info">
            <div class="game-title">Island Survival</div>
            <div class="game-description">Craft and survive alone on an island.</div>
          </div>
        </div>
        <div class="game-card">
          <div class="game-image-container">
            <img class="game-image" src="images/game-6.jpg" alt="Game 6">
            <div class="game-overlay"><div class="purchase-fee">Play</div></div>
          </div>
          <div class="game-info">
            <div class="game-title">Sky Warriors</div>
            <div class="game-description">Epic aerial dogfights and missions.</div>
          </div>
        </div>
        <div class="game-card">
          <div class="game-image-container">
            <img class="game-image" src="images/game-7.jpg" alt="Game 7">
            <div class="game-overlay"><div class="purchase-fee">Play</div></div>
          </div>
          <div class="game-info">
            <div class="game-title">Cyber City</div>
            <div class="game-description">Explore a futuristic metropolis.</div>
          </div>
        </div>
        <div class="game-card">
          <div class="game-image-container">
            <img class="game-image" src="images/game-8.jpg" alt="Game 8">
            <div class="game-overlay"><div class="purchase-fee">Play</div></div>
          </div>
          <div class="game-info">
            <div class="game-title">Dungeon Crawl</div>
            <div class="game-description">Delve deep into dark dungeons.</div>
          </div>
        </div>
      </div>
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
        <li><a href="store.jsp">Store</a></li>
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
  </div>
</body>
</html>